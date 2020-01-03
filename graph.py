import matplotlib.pyplot as plt
import numpy as np
from scipy import stats

filenames = [
	"received0.log",
	"received1.log"
]

plt.figure(0)
heights = {}
for filename in filenames:
	heights[filename] = []
	with open(filename, "r") as f:
		for line in f.readlines():
			try:
				height = float(line.split(",")[0]) #altitude
				heights[filename].append(height)
			except:
				print(line)
				exit(0)
	plt.plot(heights[filename])
differences = []
width = min(len(heights[filenames[0]]), len(heights[filenames[1]]))
for j in range(width):
	differences.append(heights[filenames[1]][j] - heights[filenames[0]][j]) 
plt.plot(differences)
plt.hlines(np.average(differences), 0, width)
plt.legend(["Sensor 0", "Sensor 1", "Error"])
plt.title("Sensor Data and Error")
plt.savefig("data.png")
#plt.show()

print(stats.describe(differences))

plt.figure(1)
plt.hist(differences, bins=532)
plt.title("Error Distribution")
plt.savefig("error.png")
#plt.show()

plt.figure(2)
alphas = [1, 0.3, 0.1, 0.03, 0.01, 0.003, 0.001, 0.0003, 0.0001]

for alpha in alphas:
	lpf = [0]
	for element in heights[filenames[1]]:
		new_value = (1 - alpha) * lpf[-1] + alpha * element
		lpf.append(new_value)
	plt.plot(lpf)
plt.legend(alphas)
plt.title("Different low pass alpha values")
plt.savefig("low_pass.png")
plt.show()