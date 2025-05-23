#!/usr/bin/env bash

/usr/bin/python3.12 -m venv venv
source venv/bin/activate
pip install \
    --extra-index-url=https://pypi.anaconda.org/rapidsai-wheels-nightly/simple \
    "cudf-cu12>=25.6.0a0,<=25.6" "dask-cuda>=25.6.0a0,<=25.6" "cudf-polars-cu12>=25.6.0a0,<=25.6"
pip install polars==1.28 linetimer pydantic pydantic-settings
/bin/bash