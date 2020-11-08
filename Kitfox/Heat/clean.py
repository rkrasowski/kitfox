import RPi.GPIO as GPIO
import time
import sys

pin = int(sys.argv[1])
GPIO.setmode(GPIO.BOARD)

GPIO.setup(pin,GPIO.OUT)

servo1 = GPIO.PWM(pin,50) # pin 11 for servo1, pulse 50Hz


#Clean things up at the end
servo1.stop()
GPIO.cleanup()
print("Goodbye!")
