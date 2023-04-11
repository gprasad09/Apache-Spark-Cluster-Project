#!/bin/bash

~/Apache-Spark-Cluster-Project/sh_scripts/scripts_compose/stop_spark.sh

docker compose -f ~/Apache-Spark-Cluster-Project/docker_files/docker_composefiles/docker-compose_master.yml stop

