<div align="center">

# Automated containerized Apache Spark Cluster

</div>

## Description

This repository contains instructions to install ApacheSpark cluster using docker containers.
Following sections explain steps to build the Apache Spark cluster using this repository.

## How to run

<b>Step 0</b>: Pre-requisites
1. All host machines should have Docker engine installed (Follow Docker installation guide https://docs.docker.com/engine/install/
2. Add master host and worker hosts by swarm network.

---->Initiate docker swarm (Only on Master host) with below command
    
```bash
$ docker swarm init --advertise-addr <master-ip-address>  #Replace master-ip-address with your IP address.
```

---->Add worker hosts to docker swarm (Only on worker hosts).Docker init command generates a token and complete line of command (looks like as shown below) which can be executed on all worker hosts to add them to Swarm network. 
    
```bash
$ docker swarm join --token <token from swarm init output > master-ip-address:2377
```

<b>Step 1</b>: Clone this git repository. 
```bash
$ git clone https://github.com/gprasad09/Apache-Spark-Cluster-Project.git
```

<b>Step 2</b>: Build and start the spark cluster by executing the command below.
```bash
$ ./start.sh
```

<b>Step 3</b>: Launch Jupyter notebook
```bash
$ ./jupyter.sh
```

<b>Step 4</b>: Execute port forward command so that you can access Spark UI and Jupyter on your local machine.
```bash
$ ssh  -L 8888:localhost:8888 -L 8080:localhost:8080 userid@master-host-address
```

<b>Step 5</b>: Stop the cluster once you are done with you work on Apache Cluster
 ```bash
 $./stop.sh
```

