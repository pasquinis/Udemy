## Create Virtualbox Hosts
# Create Redis host
```
   $ docker-machine create -d virtualbox redis-host
```

# Create Identidock host
```
   $ docker-machine create -d virtualbox identidock-host
```

## Redis Host
## Set up Redis container and Redis ambassador container
```
   $ eval $(docker-machine env redis-host)
   $ docker run -d --name real-redis redis:3
   $ docker run -d --name real-redis-ambassador \
     -p 6379:6379 \
     --link real-redis:real-redis \
     amouat/ambassador
```

## Identidock Host
## Set up Redis ambassador container to remote Redis host
```
   $ eval $(docker-machine env identidock-host)
   $ docker run -d --name redis-ambassador --expose 6379 \
     -e REDIS_PORT_6379_TCP=tcp://$(docker-machine ip redis-host):6379 \
     amouat/ambassador
```
## Link identidock and dnmonster to Ambassador
```
   $ docker run -d --name dnmonster amouat/dnmonster:1.0
   $ docker run -d --link dnmonster:dnmonster \
     --link redis-ambassador:redis \
     -p 80:9090 \
     pasquinis/identidock:newest
```
