#!/bin/bash

set -ex

USERNAME=passy
IMAGE_PATH=arm
IMAGE_NAME=$IMAGE_PATH
IMAGE=$USERNAME/rust-crosscompiler-arm

RUST_VERSION=1.17.0

docker build -t $IMAGE:$RUST_VERSION $IMAGE_PATH

docker push $IMAGE
