#!/usr/bin/env bash

workdir=/home/biubiu

docker run --name ${USER}-python --rm \
--workdir=$workdir \
--gpus all -it --privileged=true --cap-add=SYS_ADMIN \
--mount type=bind,src=/nvme/1/tialiu/rapids_arm/cudf_gds_user_debug,dst=$workdir \
--mount type=bind,src=/nvme/1/${USER},dst=/mnt/nvme \
--volume /run/udev:/run/udev:ro \
--hostname=custom-python \
biubiu-python /bin/bash