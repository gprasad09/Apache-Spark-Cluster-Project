#!bin/bash
cd
cd ./docker_repo/docker_composefiles

rm *

wget https://raw.githubusercontent.com/gprasad09/Apache-Spark-Cluster-Project/master/docker-compose_master.yml

wget https://raw.githubusercontent.com/gprasad09/Apache-Spark-Cluster-Project/master/docker-compose_worker1.yml

wget https://raw.githubusercontent.com/gprasad09/Apache-Spark-Cluster-Project/master/docker-compose_worker2.yml

cd

cd ./docker_repo/dockerfiles

rm *

wget https://raw.githubusercontent.com/gprasad09/Apache-Spark-Cluster-Project/master/dockerfile_scalabase

wget https://raw.githubusercontent.com/gprasad09/Apache-Spark-Cluster-Project/master/dockerfile_sparkbase

wget https://raw.githubusercontent.com/gprasad09/Apache-Spark-Cluster-Project/master/dockerfile_spark_user

cd
echo ""
echo "****List of compose files***"

ls ./docker_repo/docker_composefiles -all

echo ""
echo "****List of docker files*****"
ls ./docker_repo/dockerfiles -all

