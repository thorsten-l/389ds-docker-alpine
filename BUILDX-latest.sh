#!/bin/bash

BUILD_VERSION=$1
echo "BUILD_VERSION=$BUILD_VERSION"
docker buildx build --build-arg BUILD_VERSION="$BUILD_VERSION" \
--push \
--platform linux/arm/v7,linux/arm64/v8,linux/amd64 \
--tag "tludewig/389ds:$BUILD_VERSION-alpine" .

docker buildx build --build-arg BUILD_VERSION="$BUILD_VERSION" \
--push \
--platform linux/arm/v7,linux/arm64/v8,linux/amd64 \
--tag "tludewig/389ds:$2-alpine" .

docker buildx build --build-arg BUILD_VERSION="$BUILD_VERSION" \
--push \
--platform linux/arm/v7,linux/arm64/v8,linux/amd64 \
--tag "tludewig/389ds" .
