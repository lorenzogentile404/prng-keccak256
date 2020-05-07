import hashlib

#https://www.stat.berkeley.edu/~stark/Java/Html/sha256Rand.htm
#https://people.csail.mit.edu/rivest/sampler.py

seed = 123
maxValue = 1000
numbersToSample = 10

for currentSampleNumber in range(1,numbersToSample + 1):
    h = hashlib.sha256((str(seed) + "," + str(currentSampleNumber)).encode()).hexdigest()
    print("currentSampleNumber = ", currentSampleNumber)
    print("h = ", h)
    n = int(h, 16) % maxValue + 1
    print("n = ", n)
