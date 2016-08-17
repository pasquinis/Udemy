#Default
COMPOSE_ARGS="-f jenkins.yml -p jenkins"

#Move to directory with Docker file
cd "using-docker/chapter-8/identidock"

#Stop and remove latest containers
sudo docker-compose $COMPOSE_ARGS stop
sudo docker-compose $COMPOSE_ARGS rm --force -v

#Start to build the image
sudo docker-compose $COMPOSE_ARGS build --no-cache

#Up all the containers
sudo docker-compose $COMPOSE_ARGS up -d

#Execute the unit tests
sudo docker-compose $COMPOSE_ARGS run --no-deps --rm -e ENV=UNIT identidock
ERR=$?

#Execute as last a smoke test
if [ $ERR -eq 0 ]; then
    IP=$(sudo docker inspect -f {{.NetworkSettings.IPAddress}} \
        jenkins_identidock_1)
    CODE=$(curl -sL -w "%{http_code}" $IP:9090/monster/bla -o /dev/null) || true
    if [ $CODE -ne 200 ]; then
        echo "Site returned " $CODE
        ERR=1
    fi
fi

#Stop and remove latest containers
sudo docker-compose $COMPOSE_ARGS stop
sudo docker-compose $COMPOSE_ARGS rm --force -v

return $ERR
