#!/bin/sh

set -e
set -x

SCRIPT="$1"

DEBUG=1 . "$SCRIPT"

if [ ! -x "$HOME/bin/ubi" ]; then
    echo "Running $SCRIPT did not install ubi!"
    exit 1
fi

if [ ! -x "$HOME/bin/pylee" ]; then
    echo "Running $SCRIPT did not install pylee!"
    exit 1
fi

exit 0