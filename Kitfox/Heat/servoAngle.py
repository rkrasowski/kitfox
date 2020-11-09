############# ServoAngle.py #####################################
#								#
#	ServoAngle.py 11 45 - first arg - pin number,		#
#	second arg - angle					#
#	by Robert J Krasowski 11/7/2020				#
#								#
#################################################################


import RPi.GPIO as GPIO
import time
import sys

pin = int(sys.argv[1])
angle = int(sys.argv[2])

# Set GPIO numbering mode
GPIO.setmode(GPIO.BOARD)

# Set pin 11 as an output, and define as servo1 as PWM pin
GPIO.setup(pin,GPIO.OUT)
servo1 = GPIO.PWM(pin,50) # pin 11 for servo1, pulse 50Hz

# Start PWM running, with value of 0 (pulse off)
servo1.start(0)

servo1.ChangeDutyCycle(2+(angle/18))
time.sleep(0.5)
servo1.ChangeDutyCycle(0)

#Clean things up at the end
servo1.stop()
GPIO.cleanup()
print("Goodbye!")
