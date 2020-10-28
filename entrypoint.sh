#!/bin/sh -l

ls

pwd

dx login --token $1 --noprojects
dx select $2

if [[ $3 -eq true ]]
then
  echo "Force build"
  dx build -f
else
  echo "Normal build"
  dx build -f
fi