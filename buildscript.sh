#!/bin/bash

docker build -t $DOCKER_REG_URL$JOB_NAME:$BUILD_ID ./DockerBuild/


docker push $DOCKER_REG_URL$JOB_NAME:$BUILD_ID
