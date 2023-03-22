#!/bin/bash

manager=$(./sh_scripts/scripts_swarm/get_manager_id.sh)
echo ">>>Manager Container ID: ${manager}"

docker exec -it ${manager} sh -c "cd /usr/share && jupyter notebook --ip=0.0.0.0 --allow-root --no-browser --port=8888"

