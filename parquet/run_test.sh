#!/usr/bin/env bash

export CUFILE_LOGGING_LEVEL=TRACE
export CUFILE_ALLOW_COMPAT_MODE=false
export CUFILE_FORCE_COMPAT_MODE=false

export KVIKIO_COMPAT_MODE="OFF"
export KVIKIO_NTHREADS=4

python parquet.py
