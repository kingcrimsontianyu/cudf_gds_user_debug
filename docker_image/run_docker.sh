#!/usr/bin/env bash

rootdir=$(pwd)/..
workdir=/home/${USER}-gds-debug
polars_dir=/nvme/1/tialiu/polars/polars-benchmark

docker run --name ${USER}-gds-debug --rm \
--workdir=$workdir \
--gpus all --pull always -it --privileged=true --cap-add=SYS_ADMIN --user=root \
--mount type=bind,src=$rootdir,dst=$workdir \
--mount type=bind,src=$polars_dir,dst=$workdir/test/polars-benchmark \
--mount type=bind,src=/nvme/1/${USER},dst=/mnt/nvme \
--volume /run/udev:/run/udev:ro \
--hostname=custom-cudf-host \
--entrypoint="$workdir/docker_image/entrypoint.sh" \
rapidsai/base:25.06a-cuda12.8-py3.13