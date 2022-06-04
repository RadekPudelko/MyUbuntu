# Starts an initialzied docker container

# ./startc.sh [ContainerName]
## ContainerName - name of the container to start. If not supplied
## than the container in .cname will be used

# Parse the container name if supplied, otherwise check .cname file
CName=$(cat .cname)
if [ ! -z "$1" ]; then
    CName=$1        
fi

echo "Startong container $CName"
echo "CMD: docker start $CName"
docker start $CName
