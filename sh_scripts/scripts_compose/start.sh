#!/bin/bash

docker compose -f ~/Apache-Spark-Cluster-Project/docker_files/docker_composefiles/docker-compose_master.yml start

~/Apache-Spark-Cluster-Project/sh_scripts/scripts_compose/start_spark.sh
