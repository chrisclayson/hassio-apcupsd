#!/usr/bin/env bash

docker buildx build --platform linux/arm64 -t apcupsd apcupsd

jq '.options' < apcupsd/config.json > /tmp/option.json
docker run \
  -it \
  -v /tmp/option.json:/data/options.json \
  apcupsd:latest
