// BMP180 libraries
#include <SFE_BMP180.h>
#include <Wire.h>

// OLED libraries
#include <SPI.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

// Constants
#define SCREEN_WIDTH 128 // OLED display width, in pixels
#define SCREEN_HEIGHT 64 // OLED display height, in pixels

// Declaration for an SSD1306 display connected to I2C (SDA, SCL pins)
#define OLED_RESET    -1 // Reset pin # (or -1 if sharing Arduino reset pin)
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

// BMP 180 variables
SFE_BMP180 pressure;
double baseline; // baseline pressure
double a_lpf;
double a_lpf_alpha = 0.001;

// State variables
volatile char button_pressed = 0;

void button_press() {
  button_pressed = 1;
}

void blink_code(int n) {
  for (int i = 0; i < n; i++) {
    digitalWrite(13, HIGH);
    delay(500);
    digitalWrite(13, LOW);
    delay(500);
  }
  delay(1000);
}

void splash_screen() {
  // Splash screen
  display.clearDisplay();

  display.setTextColor(SSD1306_WHITE);

  display.setTextSize(2);
  display.setCursor(0, 0);
  display.print(" GCK  SGC");

  display.setTextSize(3);
  display.setCursor(0, 16);
  display.print("  Sky   Ruler");

  display.display();
}

void setup() {

  // Attach the hardware interupt
  attachInterrupt(digitalPinToInterrupt(2), button_press, RISING);

  // Check that the BMP180 is connected
  if (!pressure.begin()) {
    //Serial.println("BMP180 allocation failed");
    blink_code(1);
    for (;;); // Don't proceed, loop forever
  }

  // Check that the display is connected
  if (!display.begin(SSD1306_SWITCHCAPVCC, 0x3C)) { // Check address for your device
    //Serial.println("SSD1306 allocation failed");
    blink_code(2);
    for (;;); // Don't proceed, loop forever
  }

  // Display the splash screen
  splash_screen();
  delay(3000);

  // Get the baseline measurement for the pressure sensor
  baseline = getPressure(); //initial value
  double alpha = 0.001;
  int tests = 100;
  for (int i = 0; i < tests; i++) {
    baseline = alpha * getPressure() + (1 - alpha) * baseline;
  }

}

void loop() {

  // PRESSURE ////////////////////////////////
  
  // put your main code here, to run repeatedly:
  double a, P;

  // Get a new pressure reading:

  P = getPressure(); //initial value

  // Show the relative altitude difference between
  // the new reading and the baseline reading:

  a = pressure.altitude(P, baseline);

  a_lpf = a * a_lpf_alpha + a_lpf * (1 - a_lpf_alpha);

  char my_string[10];
  dtostrf(a_lpf, 5, 2, my_string);

  ////////////////////////////////

  if (button_pressed == 1) {
    display.clearDisplay();
    display.setTextSize(4);
    display.setCursor(0, 16);
    display.print(my_string);
    display.display();

    delay(1000);

    display.clearDisplay();
    display.display();
    
    button_pressed = 0;
  }
}

double getPressure()
{
  char status;
  double T, P, p0, a;

  // You must first get a temperature measurement to perform a pressure reading.

  // Start a temperature measurement:
  // If request is successful, the number of ms to wait is returned.
  // If request is unsuccessful, 0 is returned.

  status = pressure.startTemperature();
  if (status != 0)
  {
    // Wait for the measurement to complete:

    delay(status);

    // Retrieve the completed temperature measurement:
    // Note that the measurement is stored in the variable T.
    // Use '&T' to provide the address of T to the function.
    // Function returns 1 if successful, 0 if failure.

    status = pressure.getTemperature(T);
    if (status != 0)
    {
      // Start a pressure measurement:
      // The parameter is the oversampling setting, from 0 to 3 (highest res, longest wait).
      // If request is successful, the number of ms to wait is returned.
      // If request is unsuccessful, 0 is returned.

      status = pressure.startPressure(3);
      if (status != 0)
      {
        // Wait for the measurement to complete:
        delay(status);

        // Retrieve the completed pressure measurement:
        // Note that the measurement is stored in the variable P.
        // Use '&P' to provide the address of P.
        // Note also that the function requires the previous temperature measurement (T).
        // (If temperature is stable, you can do one temperature measurement for a number of pressure measurements.)
        // Function returns 1 if successful, 0 if failure.

        status = pressure.getPressure(P, T);
        if (status != 0)
        {
          return (P);
        }
        //else Serial.println("error retrieving pressure measurement\n");
      }
      //else Serial.println("error starting pressure measurement\n");
    }
    //else Serial.println("error retrieving temperature measurement\n");
  }
  //else Serial.println("error starting temperature measurement\n");
}
