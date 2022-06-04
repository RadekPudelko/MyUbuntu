FROM ubuntu

# Update package manager
RUN apt-get update
RUN apt-get upgrade -y

# Has stuff like gcc, make, and libc6-dev
RUN apt-get install -y build-essential
