from machine import Pin
import utime

status = Pin(25, Pin.OUT)
led = Pin(12, Pin.OUT)

while True:
    status.toggle()
    led.toggle()
    print("Hello World")
    utime.sleep(2.0)