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

touch CONTRIBUTING.md

cat > README.md << EOF
## $1

## Project description

Project description goes here.

## Installation Instructions 

Installation instructions go here. 
EOF

cat > LICENSE.md << EOF
As per github's docs:
> For your repository to truly be open source, you'll need to license it so that others are free to use, change, and distribute the software.

More information on licensing can be found [here](https://choosealicense.com/). Check out [hubot's](https://github.com/hubotio/hubot/blob/master/LICENSE.md) license as an example.

EOF

echo "License, contributing, readme markdown files created."

echo "Project successfully created."