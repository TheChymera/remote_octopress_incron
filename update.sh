#!/bin/bash

#this is required because incron apparently messes up the locale when calling `rake gen_deploy`
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8.

#change directory, generate, deploy
cd $1
rake gen_deploy
