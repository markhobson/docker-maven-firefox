#!/bin/bash

docker build --pull -t maven-firefox:jdk-8 jdk-8 \
	&& docker build --pull -t maven-firefox:jdk-11 jdk-11 \
	&& docker build --pull -t maven-firefox:jdk-17 -t maven-firefox jdk-17
