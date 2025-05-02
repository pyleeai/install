#!/bin/sh

if [ -n "$DEBUG" ]; then
    set -x
fi

set -e

if [ "$(id -u)" -eq 0 ]; then
    DEFAULT_TARGET="/usr/local/bin"
else
    DEFAULT_TARGET="$HOME/bin"
fi

TARGET="${TARGET:=$DEFAULT_TARGET}"

if [ ! -d "$TARGET" ]; then
    mkdir -p $TARGET
fi

# Install UBI
curl --silent --location \
    https://raw.githubusercontent.com/houseabsolute/ubi/master/bootstrap/bootstrap-ubi.sh |
    sh
    
# Install Pylee CLI 
"$TARGET/ubi" \
    --project pyleeai/cli \
    --exe pylee \
    --in "$TARGET" \
    --verbose
