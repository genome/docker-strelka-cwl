#!/bin/sh

set -o errexit
set -o nounset

if [ $# -ne 5 ]
then
    echo "Usage: $0 [TUMOR_BAM] [NORMAL_BAM] [REFERENCE] [CONFIG] [NUM_CPUS]"
fi

TUMOR_BAM="$1"
NORMAL_BAM="$2"
REFERENCE="$3"
CONFIG="$4"
NUM_CPUS="$5"

/usr/bin/docker_helper.sh \
    "$TUMOR_BAM" \
    "$NORMAL_BAM" \
    "$REFERENCE" \
    "${HOME}/output" \
    "$CONFIG" \
    "$NUM_CPUS"
