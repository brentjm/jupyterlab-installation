#!/bin/bash --login

###############################################################
# Creates a Conda environment local to the execution directory.
# Installs Python dependencies for the Notebook extensions.
# Created Brent Maranzano
# May 10, 2022
# Usage:
# $./create-conda-env.sh
###############################################################

set -e

# create the conda environment
export ENV_PREFIX=$PWD/env
conda env create --prefix $ENV_PREFIX --file environment.yml --force
conda activate $ENV_PREFIX
source postBuild
