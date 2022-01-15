#!/usr/bin/env bash
# This script will re-generate reproducible lockfiles
# Execution needs to be from inside the `conda` folder

ENV_FILE="environment.yml"
LOCK_ENV="TMPLOCK"

# Generate CondaLock environment unless present
conda env list | grep ${LOCK_ENV} > /dev/null

if [[ $? -eq 1 ]]; then
  printf "Creating temporary conda-lock environment \n"
  conda env create -q -f lock-env.yml
fi

# https://github.com/conda/conda/issues/7980#issuecomment-492784093
eval "$(conda shell.bash hook)"
conda activate ${LOCK_ENV}

if [[ ! -s "${ENV_FILE}" ]]; then
    >&2 printf " Missing ${ENV_FILE} to generate environments with\n"
    >&2 printf " Are you inside the 'conda' folder?\n"
    exit 1
fi

# Local environments
printf "Generate conda environment files \n"
conda-lock lock --mamba -f ${ENV_FILE}

## Generate explicit lock files
conda-lock render --mamba --kind explicit

## Generate full conda env files
conda-lock render --mamba --kind env

## Generate environment.yml for BinderHub compatibility
cp conda-linux-64.lock.yml ../binder/environment.yml

# Remove CondaLock environment when the last command was successful
if [[ $? -eq 0 ]]; then
  printf "Removing temporary conda-lock environment  \n"
  conda deactivate
  conda remove -q -y --name ${LOCK_ENV} --all
fi
