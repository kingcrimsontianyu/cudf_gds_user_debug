#!/usr/bin/env bash

apt update
apt install libnuma1
apt install -y make gcc git
pip install linetimer pydantic pydantic-settings
/bin/bash