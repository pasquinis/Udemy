# Swarm

## Create Cluster

I use _docker-machine_ to create a small cluster of VMs, One manager and two swarm agent.

1. Create _SWARM_TOKEN_ for the cluster
```
   $ SWARM_TOKEN=$(docker run swarm create)
```

2. The **datacenter A**
   * Create the _swarm-master_
```
   $ docker-machine create -d virtualbox \
    --engine-label dc=a \
    --swarm --swarm-master \
    --swarm-discovery token://$SWARM_TOKEN \
    swarm-master
```

   * Create a _swarm agent_
```
   $ docker-machine create -d virtualbox \
    --engine-label dc=a \
    --swarm \
    --swarm-discovery token://$SWARM_TOKEN \
    swarm-1
```

3. The **datacenter B**
   * Create a _swarm agent_
```
   $ docker-machine create -d virtualbox \
    --engine-label dc=b \
    --swarm \
    --swarm-discovery token://$SWARM_TOKEN \
    swarm-2
```

## Test our cluster

1. Add container to _datacenter A_
   * Connect our docker cliet to _swarm-master_
```
   $ eval $(docker-machine env --swarm swarm-master)
```
   * Run the container into cluster
```
   $ docker run -d debian sleep 10
   $ docker run -d -p 80:80 nginx
   $ docker run -d -p 80:80 nginx
   $ docker run -d -p 80:80 nginx
```
   * See the container disposition
```
   $ docker ps
```
   * Run the container using _constraint_ filter
```
   $ docker run -d -e constraint:dc==b postgres
```
2. Stop and Remove VMs
```
  $ docker-machine stop swarm-master
  $ docker-machine rm swarm-master
  $ docker-machine stop swarm-1
  $ docker-machine rm swarm-1
  $ docker-machine stop swarm-2
  $ docker-machine rm swarm-2
```
