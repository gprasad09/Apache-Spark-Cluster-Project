#!/bin/bash

./sh_scripts/scripts_swarm/build_stack.sh

sleep 3   #wait till containers are created

#./sh_scripts/scripts_swarm/prepare_master.sh                  #Configure master containe

./sh_scripts/scripts_swarm/start_spark.sh
