#create a Virtualmachine
docker-machine create --driver virtualbox identidock-vm


#create a Droplet into DigitalOcean
DO_NAME='identidock-do'
DO_IMAGE='ubuntu-16-04-x64'
DO_REGION='fra1'

docker-machine create --driver digitalocean \
    --digitalocean-access-token=$TOKEN \
    --digitalocean-image=$DO_IMAGE \
    --digitalocean-region=$DO_REGION \
    $DO_NAME
