#!/bin/bash

set -e

[ "$1" ] || ( echo "Missing archive name!"; exit 1 )
[ -d /mnt/src ] || ( echo "Mount source directory to /mnt/src!"; exit 1 )
[ -d /mnt/dst ] || ( echo "Mount destionation directory to /mnt/dst!"; exit 1)

echo "$1"
cd /mnt/src
tar -cvzf /mnt/dst/"$1".tar.gz *
