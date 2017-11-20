from __future__ import division
#!/usr/bin/python3
import random
#import numpy as np

def to_percent(a, crabCount):
	return int(round((a/crabCount)*100, 0))

answers = [0b010101010101, 0b101010101010, 0b111111111111, 0b101010010101]

firstCrab = 0
secondCrab = 0
thirdCrab = 0
firstCrabCount = 0
secondCrabCount = 0
thirdCrabCount = 0
MAX_CRAB = 6

for question in range(0, 6):
	print("Koks tu krabas?")

	firstCrab = secondCrab = thirdCrab = 0;
	buf = random.choice(answers)
	print bin(buf) 
	for wheelPosition in range(0, 6):
		print wheelPosition
		t = (buf & 0b000000000011)
		if t == 1: 
			print "01"
			firstCrab+=1
		elif t == 2:
			secondCrab+=1
			print "10"
		elif t == 3:
			thirdCrab+=1
			print "11"
		buf = buf >> 2

	print(firstCrab, secondCrab, thirdCrab)
	crabCount = firstCrab + secondCrab + thirdCrab
	firstCrabPercent = firstCrab * 100 / MAX_CRAB
	secondCrabPercent = secondCrab * 100 / MAX_CRAB
	thirdCrabPercent = thirdCrab * 100 / MAX_CRAB
	print("Pirmas", firstCrabPercent, "Antras", secondCrabPercent, "Trecias", thirdCrabPercent)
