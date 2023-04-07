These scripts are used if cluster is built using Docker stack.
In this scenario, we need to start containers using "start.sh" on master.
It will create a stack of services (master and worker containers) across host machines. 
In this approach, there is no need for separate login on host machines and creation of containers on them.
