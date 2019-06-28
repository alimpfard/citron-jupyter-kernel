#!/bin/bash

mkdir -p ~/.ipython/kernels/citron-kernel
START_SCRIPT_PATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)
CITRON_PATH=$(which ctr)
CONTENT='{
    "argv": ["'${CITRON_PATH}'", "'${START_SCRIPT_PATH}/citron/main.ctr'", "-quiet", "{connection_file}"],
    "display_name": "Citron Kernel",
    "language": "Citron"
}'
echo $CONTENT > ~/.ipython/kernels/citron-kernel/kernel.json
