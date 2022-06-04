# Initializes a docker container

# ./initc.sh [-i ImageName] [-c ContainerName]
## -i ImageName - Specify the Docker Image Name, if not given than name in the .iname file will be used
## -c ContainerName - Specify the Docker Container Name

# Default image name
IName=$(cat .iname)
# Default container name
CName=MyUbuntu 

# Parse arguments
while getopts 'i:c:' OPTION; do
  case "$OPTION" in
    i)
        IName="$OPTARG"
        echo "$IName"
        ;;
    c)
        CName="$OPTARG"
        echo "$OPTARG"
        ;;
    ?)
        echo "script usage: $(basename \$0) [-i DockerImageName] [-c ContainerImageName]" >&2
        exit 1
        ;;
  esac
done
shift "$(($OPTIND -1))"

# Run the docker command
echo "CMD: docker run -dt --name $CName $IName"
docker run -dt --name $CName $IName

# Store the container name in a file
echo $CName > .cname
