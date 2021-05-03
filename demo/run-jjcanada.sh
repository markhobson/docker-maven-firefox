#!/bin/bash

DOCKER_IMAGE=ualjjcanada/maven-firefox

docker pull $DOCKER_IMAGE
docker run --rm -it -v "$HOME/.m2":/root/.m2 -v "$PWD":/usr/src -w /usr/src $DOCKER_IMAGE mvn clean verify
