#!/bin/bash

echo "##############"
read -p "Please enter a number" NUM
echo $NUM

if [ $NUM -gt 100 ]
then
   echo "We have entered into IF block"
   sleep 3
   echo "Your number is greatet than 100"
   echo
   date
else
   echo "Your number less than 100"
   echo "We are in else block"
fi

echo "Script completed successfully"
