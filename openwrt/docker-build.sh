#!/bin/bash
set -euxo pipefail

SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
WORKDIR="$SCRIPT_DIR"

docker run --rm \
  --user root \
  -v "$WORKDIR/bin:/builder/bin" \
  -v "$WORKDIR/files:/builder/files" \
  -v "$WORKDIR/build.sh:/builder/build.sh" \
  openwrt/imagebuilder:armsr-armv8-main \
  bash -c "cd /builder && ./build.sh"
