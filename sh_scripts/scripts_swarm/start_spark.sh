#!/bin/bash

manager=$(./sh_scripts/scripts_swarm/get_manager_id.sh)
echo ">>>Manager Container ID: ${manager}"

docker exec -it $manager sh -c "./sbin/stop-all.sh && ./sbin/start-all.sh"
