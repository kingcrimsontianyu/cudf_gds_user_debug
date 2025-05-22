#!/usr/bin/env bash

workdir=/home/rapids

docker run --name ${USER}-cudf-user --rm \
--workdir=$workdir \
--gpus all --pull always -it --privileged=true --cap-add=SYS_ADMIN --user=root \
--mount type=bind,src=.,dst=$workdir \
--mount type=bind,src=/nvme/1/${USER},dst=/mnt/nvme \
--volume /run/udev:/run/udev:ro \
--hostname=custom-cudf-host \
--entrypoint="$workdir/entrypoint.sh" \
rapidsai/base:25.06a-cuda12.8-py3.13