#!/usr/bin/env bash

#TODO change teamname to actual teamname
# The --fakeroot option is necessary for the creation to be able to run this file as a simple user
singularity build --fakeroot image.sif Singularity
