DPATH = .#         # Folder containing the Dockerfile
INAME = myubuntu#  # Image Name
CNAME = MyUbuntu#  # Container Name

HVPATH = $(PWD)/shared#  # The host volume path
CVPATH = /root#          # The container volume path

WPATH = $(CVPATH)

# Build an image from a Dockerfile
build:
	docker build -t $(INAME) $(DPATH)

# Create and run a container
run:
	docker run -dt -v $(HVPATH):$(CVPATH) --name $(CNAME)  $(INAME)

# Enter the container
bash:
	docker exec -it -w $(WPATH) $(CNAME) bash

# Start a stopped container
start:
	docker start $(CNAME)

# Stop a running container
stop:
	docker stop $(CNAME) -t 1

# Remove a container
rm:
	docker rm $(CNAME)

# Stop a container and remove it
clean:
	make stop
	make rm
	rm $(HVPATH)


