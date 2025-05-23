#!/usr/bin/env bash

# https://docs.rapids.ai/install/

# apt install -y wget
# wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O $(pwd)/miniconda.sh
# bash $(pwd)/miniconda.sh -b -p miniconda
# miniconda/bin/conda create -n rapids-25.06 -c rapidsai-nightly -c conda-forge -c nvidia  \
#     rapids=25.06 python=3.12 'cuda-version>=12.0,<=12.8' cuda-cudart cuda-version=12
/bin/bash

# export PATH=PATH:miniconda/bin
# pip install polars==1.28 linetimer pydantic pydantic-settings
# miniconda/bin/conda init
# miniconda/bin/conda activate rapids-25.06