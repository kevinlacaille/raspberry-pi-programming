#!/bin/python
# Extracts the core temperature and warns user if core is getting hot

# Import os library
import os
# Import time library
import time

# Threshold when we decide the core temperature is hot (degrees Celsius)
HOT_THRESHOLD = 65
# Time to wait to measure next temperature (seconds)
WAIT_TIME = 1
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

    # Print instantaneous core temperature at first pass
    # If the core gets too hot, warn the user
    coreTemperature = round(getTemperature(), 1)
    if coreTemperature > HOT_THRESHOLD:
        print("WARNING: Core temperature = " + str(coreTemperature) + "C")
    else:
        print("Core is chillin' at " + str(coreTemperature) + "C")

    while True:
        # Measure core temperature every 1 second 
        integratedTemperature = 0
        count = 0
        tStart = time.time()
        while time.time() - tStart < SLEEP_INTERVAL:
            integratedTemperature += getTemperature()
            count += 1
            time.sleep(WAIT_TIME)
            
        # Mean core temperature over the SLEEP_INTERVAL
        coreTemperature = round(integratedTemperature / count, 1)
        
        # If the core gets too hot, warn the user
        if coreTemperature > HOT_THRESHOLD:
            print("WARNING: Core temperature = " + str(coreTemperature) + "C")
        else:
            print("Core is chillin' at " + str(coreTemperature) + "C")

        # Wait 1 minute and check core temperature again
        time.sleep(SLEEP_INTERVAL)
        
