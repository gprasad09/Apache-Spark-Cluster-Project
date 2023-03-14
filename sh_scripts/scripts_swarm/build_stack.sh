#!/bin/bash

docker stack deploy -c ~/Apache-Spark-Cluster-Project/docker_files/docker-stack.yml sparkstack    #Build stack which create service and overlay network
