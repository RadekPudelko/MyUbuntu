# Initializes a docker container

# ./initc.sh [-i ImageName] [-c ContainerName] [-d SharedDirectoryName]
## -i ImageName - Specify the Docker Image Name, if not given than name in the .iname file will be used
## -c ContainerName - Specify the Docker Container Name
## -d SharedDirectoryName - The name of the shared directory

# Default image name
IName=$(cat .iname)
# Default container name
CName=MyUbuntu
HOST_PATH=$(PWD)/shared
CONTAINER_PATH="/root"

# Parse arguments
while getopts 'i:c:d:' OPTION; do
  case "$OPTION" in
    i)
        IName="$OPTARG"
        echo "$IName"
        ;;
    c)
        CName="$OPTARG"
        echo "$OPTARG"
        ;;
    d)
        DName="$OPTARG"
        echo "$OPTARG"
        ;;
    ?)
        echo "script usage: $(basename \$0) [-i DockerImageName] [-c ContainerImageName] [-d SharedDirectoryName]" >&2
        exit 1
        ;;
  esac
done
shift "$(($OPTIND -1))"

# Run the docker command
echo "CMD: docker run -dt --name -v $CName $HOST_PATH:$CONTAINER_PATH $IName"
docker run -dt --name $CName -v $HOST_PATH:$CONTAINER_PATH $IName

# Store the container name in a file
echo $CName > .cname
