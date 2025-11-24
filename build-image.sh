#!/bin/bash

# Create docker image containing kops tools and scripts

# @author  Fabrice Jammes

set -euxo pipefail

DIR=$(cd "$(dirname "$0")"; pwd -P)

. $DIR/conf.sh

docker buildx build --tag "$IMAGE" "$DIR"
