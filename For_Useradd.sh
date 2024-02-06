#!/bin/bash

MYUSERS="alpha beta gama"
for usr in $MYUSERS
do
  echo "adding user $usr"
  useradd $usr
  id $usr
done
