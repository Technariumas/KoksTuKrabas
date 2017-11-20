from __future__ import division
#!/usr/bin/python3
import random
#import numpy as np

def to_percent(a, crabCount):
	return int(round((a/crabCount)*100, 0))

answers = [0b000000000001, 0b000000000010, 0b000000000011]

firstCrab = 0
secondCrab = 0
thirdCrab = 0
firstCrabCount = 0
secondCrabCount = 0
thirdCrabCount = 0
for question in range(0, 6):
	print("Koks tu krabas?")

	for wheelPosition in range(0, 6):
		print wheelPosition
		buf = random.choice(answers)
		t = (buf & 0b000000000011)
		if t == 1: 
			firstCrab+=1
		elif t == 2:
			secondCrab+=1
		elif t == 3:
			thirdCrab+=1
		buf = buf >> 2
	crabCount = firstCrab + secondCrab + thirdCrab
	firstCrabCount+= firstCrab/crabCount
	secondCrabCount+= secondCrab/crabCount
	thirdCrabCount+= thirdCrab/crabCount
	print(firstCrabCount, secondCrabCount, thirdCrabCount)
	print("Pirmas", to_percent(firstCrabCount, crabCount), "Antras", to_percent(secondCrabCount, crabCount), "Trecias", to_percent(thirdCrabCount, crabCount))
