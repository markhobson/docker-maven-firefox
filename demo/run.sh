#!/bin/bash

DOCKER_IMAGE=markhobson/maven-firefox:jdk-8

docker pull $DOCKER_IMAGE
docker run -it -v "$PWD":/usr/src -w /usr/src $DOCKER_IMAGE mvn clean verify
