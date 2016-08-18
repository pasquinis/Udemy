## Start from Scratch

#build Jenkins image

docker build -t identijenk .

#create Jenkins Data container
#if there is a container with the same name, this command will return false
docker run --name jenkins-data identijenk echo "Jenkins Data Container"

#docker

docker run -d --name jenkins -p 8080:8080 --volumes-from jenkins-data \
  -v /var/run/docker.sock:/var/run/docker.sock identijenk
