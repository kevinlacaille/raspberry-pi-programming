#!/bin/python
# Extracts the core temperature and warns user if core is getting hot

# Import os library
import os
# Import time library
import time

# Threshold when we decide the core temperature is hot (degrees Celsius)
HOT_THRESHOLD = 65
# How often we check the core temperature (seconds)
SLEEP_INTERVAL = 60

def getTemperature():
    
    # Run a shell script to extract the CPU temperature
    os.system("sh coreTemp.sh")

    # Extract CPU temperature from file
    fo = open("sysTemp")
    temperatureString = fo.read();
    fo.close()

    # Convert temperature string to degrees Celsius
    coreTemperature = eval(temperatureString) / 1000.0

    return coreTemperature 


if __name__ == '__main__':

    while True:
        # Obtain core temperature in degrees Celsius
        coreTemperature = getTemperature()
        
        # If the core gets too hot, warn the user
        if coreTemperature > HOT_THRESHOLD:
            print "Core temperature = " + str(coreTemperature) + "C"
        else:
            print "core is chillen at " + str(coreTemperature) + "C"

        # Wait 1 minute and check core temperature again
        time.sleep(SLEEP_INTERVAL)
        
