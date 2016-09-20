# Swarm

## Cluster

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
