# MyUbuntu
Ubuntu via Docker

For running a docker program continously in the background

# Build an image

`./setup.sh [ImageName]`

Defaults:
1. `ImageName`=myubuntu

# Run a container

`./initc.sh [-i ImageName] [-c ContainerName] [-d SharedDirectoryName]`

Defaults:
1. `ImageName`=contents of `.iname` file
2. `ContainerName`=MyUbuntu

# Enter a container

./bashc.sh [ContainerName]

Defaults:
1. `ContainerName`=contents of `.cname` file

# Stop a container

`./stopc.sh [ContainerName]`

Defaults:
1. `ContainerName`=contents of `.cname` file

# Start a container

`./startc.sh [ContainerName]`

Defaults:
1. `ContainerName`=contents of `.cname` file

# Remove a container

./rmc.sh [ContainerName]

Defaults:
1. `ContainerName`=contents of `.cname` file

# Kill a container (stop + remove)

./killc.sh [ContainerName]

Defaults:
1. `ContainerName`=contents of `.cname` file


