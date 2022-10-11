#!/bin/bash

BUILD_VERSION=$1
echo "BUILD_VERSION=$BUILD_VERSION"
docker build --build-arg BUILD_VERSION="$BUILD_VERSION" -t "389ds:$BUILD_VERSION-debian" -f Dockerfile.debian .
