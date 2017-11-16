#!/usr/bin/env bash

# no file overwritting allowed
set -o noclobber

# set up folder structure
echo "Setting up your new project $1"
cd ..
mkdir $1

cd $1
mkdir doc data results src bin

