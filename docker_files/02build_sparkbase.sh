#!/bin/bash

# Download apache spark tgz. Refer apache.org for latest downloads
wget https://dlcdn.apache.org/spark/spark-3.3.2/spark-3.3.2-bin-hadoop3.tgz

docker build -t gprasad09/sparkbase:latestV1 -f ./dockerfiles/dockerfile_sparkbase .

rm spark-3.3.2-bin-hadoop3.tgz
