#!/bin/bash

#this is required because incron apparently messes up the locale when calling `$
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8.

#copy file
rm $2/$1 
wait

#change directory, generate, deploy
cd $2
rake gen_deploy

