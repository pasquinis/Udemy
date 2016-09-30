# Limit Container Networking

1. Start netcat server
```
   $ docker run --name nc-test -d amouat/network-utils nc -l 5001
```
2. Test the port 5001
```
   $ docker run \
    -e IP=$(docker inspect -f {{.NetworkSettings.IPAddress}} nc-test) \
     amouat/network-utils sh -c 'echo -n "hello" | nc -v $IP 5001'
```
