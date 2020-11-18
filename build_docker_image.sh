#! /bin/sh
set -e
docker build . -t formbot --build-arg url=$1
