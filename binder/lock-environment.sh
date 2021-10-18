#!/usr/bin/env bash

# This script will re-generate reproducible lockfiles based on environment-minimal.yml
conda create -q -y -n CondaLock conda-lock=0.13 mamba=0.17
# https://github.com/conda/conda/issues/7980#issuecomment-492784093
eval "$(conda shell.bash hook)"
conda activate CondaLock

# generate explicit lockfiles (optional -p win-64)
conda-lock lock --mamba -f environment-EDITABLE.yml -p linux-64 -p osx-64
# mamba create -n hackweek -f conda-linux-64.lock

# generate environment.yml for binder compatibility
conda-lock lock --mamba -f environment-EDITABLE.yml -p linux-64 -k env
mv conda-linux-64.lock.yml environment.yml
#  mamba env create -n hackweek -f environment.yml

# Remove conda-lock environment
conda deactivate
conda remove -q -y --name CondaLock --all
