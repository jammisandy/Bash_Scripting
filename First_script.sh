#!/bin/bash
echo "Welcome to first script"
echo

#checking system uptime
echo "###################################"
echo "The uptime of system is"
uptime
echo

# Memory utilization
echo "##################################"
echo "memory utilization"
free -m
echo

# Disk utilization
echo "#################################"
df -h
