#!/bin/bash
set -e

VERSION=11
TAG_LATEST=yunnysunny/jre:latest
TAG_CURRENT=yunnysunny/jre:${VERSION}

docker pull jre:${VERSION}
docker build . -f ./Dockerfile -t ${TAG_LATEST} -t ${TAG_CURRENT} --progress=plain
if [ "$NEED_PUSH" = "1" ] ; then
    docker push ${TAG_LATEST}
    docker push ${TAG_CURRENT}
fi