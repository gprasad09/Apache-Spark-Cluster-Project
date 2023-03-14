#!/bin/bash

cd ~/Apache-Spark-Cluster-Project/config_files

manager=$(./get_manager_id.sh)                      #get container id of master

docker cp $manager:/root/.bashrc ./bashrc.tmp       #copy ~/.bashrc from the container to host machine

cat pyspark.txt>>bashrc.tmp                         #append configuration lines for pyspark setting

docker cp ./bashrc.tmp $manager:/root/.bashrc       #restore updated version of ~/.bashrc to master container
