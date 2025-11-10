#!/bin/bash
set -e

docker run --rm -it \
  -v $(pwd)/bin:/builder/bin \
  -v $(pwd)/files:/builder/files \
  -v $(pwd)/build.sh:/builder/build.sh \
  openwrt/imagebuilder:armsr-armv7-master /builder/build.sh
