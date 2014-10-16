#!/bin/bash

#this is required because incron apparently messes up the locale when calling `rake gen_deploy`
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8.

#copy file
cp $1/$2 $3 
wait

#change directory, generate, deploy
cd $3
rake gen_deploy
