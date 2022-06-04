# Enters the container via bash

# ./bashc.sh [ContainerName]
## ContainerName - name of the container to enter. If not supplied
## than the container in .cname will be used

# Parse the container name if supplied, otherwise check .cname file
CName=$(cat .cname)
WORK_DIR=/root
if [ ! -z "$1" ]; then
    CName=$1
fi

echo "Entering container $CName"
echo "CMD: docker exec -it -w $WORK_DIR $CName bash"
docker exec -it -w $WORK_DIR $CName bash
