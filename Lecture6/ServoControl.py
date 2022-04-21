from machine import Pin, PWM
import utime

# Defines
SERVO_NEUTRAL = 1500000
SERVO_MIN = 1000000
SERVO_MAX = 2000000

# Pins
led = Pin(16, Pin.OUT)
pwm = PWM(Pin(15))

# Setup PWM for servo
pwm.freq(50)
pwm.duty_ns(SERVO_NEUTRAL)
while True:
    led.toggle()
    pwm.duty_ns(SERVO_MIN)
    utime.sleep(0.5)
    
    led.toggle()
    pwm.duty_ns(SERVO_NEUTRAL)
    utime.sleep(0.5)
    
    led.toggle()
    pwm.duty_ns(SERVO_MAX)
    utime.sleep(0.5)
    
    led.toggle()
    pwm.duty_ns(SERVO_NEUTRAL)
    utime.sleep(0.5)