#!/bin/bash

DOCKER_IMAGE=markhobson/maven-firefox

docker pull $DOCKER_IMAGE
docker run -it -v "$PWD":/usr/src -w /usr/src $DOCKER_IMAGE mvn clean verify
