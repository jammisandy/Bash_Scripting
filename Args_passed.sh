#!/bin/bash
echo "Please enter command line args"
if [ $# -le 0 ]
then
  echo "Please pass command line args"
else
  echo "The number of args passes are $#"
fi
