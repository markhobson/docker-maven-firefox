# markhobson/maven-firefox

Docker image for Java automated UI tests.

Includes:

* JDK 8
* Maven 3.8.6
* Firefox 102
* Geckodriver 0.31.0

Available on [Docker Hub](https://hub.docker.com/r/markhobson/maven-firefox/).

## Demo

See the [demo](demo) Maven project to see how this Docker image can be used to run UI tests. The [run.sh](demo/run.sh) script builds the project within the latest version of this image on Docker Hub.
