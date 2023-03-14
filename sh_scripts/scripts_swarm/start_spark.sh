docker stack deploy -c docker-stack.yml sparkstack    #Build stack which create service and overlay network

manager=$(docker ps --filter "name=sparkstack_manager.1" -q )

docker exec -it $manager sh -c "./sbin/stop-all.sh && ./sbin/start-all.sh"