# Builds a docker image
# ./setup.sh [ImageName]
## ImageName - name of the image to build

# Default image name
IName=myubuntu 

# Use supplied name if given
if [ ! -z "$1" ]; then
    IName=$1
fi

echo "CMD: docker build -t $IName ."
docker build -t $IName .
echo $IName > .iname
