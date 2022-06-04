# Stops and removes a docker container

# ./killc.sh [ContainerName]
## ContainerName - name of the container to stop. If not supplied
## than the container in .cname will be used

# Parse the container name if supplied, otherwise check .cname file
CName=$(cat .cname)
if [ ! -z "$1" ]; then
    CName=$1
fi

echo "Killing container $CName"
echo "CMD: ./stopc.sh $CName"
./stopc.sh $CName
echo "CMD: ./rmc.sh $CName"
./rmc.sh $CName
