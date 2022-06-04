# Stops a running docker container

# ./stopc.sh [ContainerName]
## ContainerName - name of the container to stop. If not supplied
## than the container in .cname will be used

# Parse the container name if supplied, otherwise check .cname file
CName=$(cat .cname)
if [ ! -z "$1" ]; then
    CName=$1
fi

echo "Stopping container $CName"
echo "CMD: docker stop $CName"
docker stop $CName
