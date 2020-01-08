#!/bin/bash
#get system temperature and save as 'sysTemp'

cat /sys/class/thermal/thermal_zone0/temp > sysTemp
