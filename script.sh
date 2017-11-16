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
touch CITATION.md
touch CONDUCT.md
touch CONTRIBUTING.md

echo "License, citation, conduct, contributing markdown files created."

cat > README.md << EOF
## $1

## Data Structure

    |- doc/           # documentation
    |
    |- data/          # directory for storing data sets
    |
    |- results/       # output for tracking computational
    |
    |- src/           # source code
    |
    |- bin/           # any compiled binaries or scripts

## Project description

Project description goes here.

## Installation Instructions 

Installation instructions go here. 
EOF

echo "Project successfully created."