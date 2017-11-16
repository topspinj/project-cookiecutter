#!/usr/bin/env bash

# no file overwritting allowed
set -o noclobber

# set up folder structure
cd ..
mkdir project

cd project
mkdir doc data results src bin

