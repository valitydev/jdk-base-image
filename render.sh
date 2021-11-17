#!/bin/bash

imageName="openjdk:15-slim"
serviceName="service-java"

render() {
sedStr="
  s!%%IMAGE_NAME%%!$imageName!g;
  s!%%SERVICE_NAME%%!$serviceName!g;
  s!%%BRANCH%%!$BRANCH!g;
  s!%%COMMIT_HASH%%!$COMMIT_HASH!g;
"

sed -r "$sedStr" $1
}

render Dockerfile.template > Dockerfile
