#!/bin/bash

manager=$(./sh_scripts/scripts_swarm/get_manager_id.sh)

docker exec -it $manager sh -c "./sbin/stop-all.sh && ./sbin/start-all.sh"
