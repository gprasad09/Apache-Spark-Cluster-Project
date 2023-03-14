#!/bin/bash
manager=$(./sh_scripts/scripts_swarm/get_manager_id.sh)     #get container id of master

echo "Configure manager container ID : $manager"

cd ~/Apache-Spark-Cluster-Project/config_files

docker cp $manager:/root/.bashrc ./bashrc.tmp               #copy ~/.bashrc from the container to host machine

cat pyspark.txt>>bashrc.tmp                                 #append configuration lines for pyspark setting

docker cp ./bashrc.tmp $manager:/root/.bashrc               #restore updated version of ~/.bashrc to master container
