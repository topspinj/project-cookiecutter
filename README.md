# Cookie-cutter Project Template Generator

This is a cookie-cutter template generator for data analysis projects. Running the bash script in this repository will generate a new directory and set up the basic sub-directories that are common in data analysis projects.

## Script instructions 

To create a new project, run the bash script and specify your project name:

```
bash script.sh project-name
```

If you don't specify a project name or if you already have a directory with the same name that you specify, then the script will not execute. 

## Project's directory structure

Running the bash script in this repository will generate a new directory (outside of this one) with the following data structure: 

    |- doc/           # documentation
    |
    |- data/          # directory for storing data sets
    |
    |- results/       # output for tracking computational
    |
    |- src/           # source code
    |
    |- bin/           # any compiled binaries or scripts

License, contributing, readme markdown files are also created in the root directory.
