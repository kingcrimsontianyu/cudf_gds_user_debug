#!/usr/bin/env bash

rootdir=$(pwd)/../..
workdir=/home/${USER}-gds-debug

# nvmedir=/nvme/1/${USER}
nvmedir=/raid/${USER}

# polars_dir=$nvmedir/polars/polars-tpch
polars_dir=$nvmedir/polars/polars-tpch

docker run --name ${USER}-gds-debug --rm \
--workdir=$workdir \
--gpus all -it --privileged=true --cap-add=SYS_ADMIN \
--mount type=bind,src=$rootdir,dst=$workdir \
--mount type=bind,src=$polars_dir,dst=$workdir/test/polars-benchmark \
--mount type=bind,src=$nvmedir,dst=/mnt/nvme \
--volume /run/udev:/run/udev:ro \
--hostname=custom-cudf-host \
--entrypoint="$workdir/package_manager/pip/entrypoint.sh" \
${USER}-slim-cuda-python