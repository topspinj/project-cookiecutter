#!/usr/bin/env bash

# no file overwritting allowed
set -o noclobber

# set up 
echo "Setting up project directory. Project name: $1"

[[ -z "$1" ]] && { echo "Project name is empty." ; exit 1; }

# set up folder structure
cd ..
mkdir $1

cd $1
mkdir doc data results src bin

echo "Folders created."

touch LICENSE.md
touch CONTRIBUTING.md

cat > README.md << EOF
## $1

## Project description

Project description goes here.

## Installation Instructions 

Installation instructions go here. 
EOF
echo "License, contributing, readme markdown files created."

echo "Project successfully created."