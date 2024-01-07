set positional-arguments
set ignore-comments

# build an image
build name:
	podman build \
		-t brandont.dev:{{name}} \
		.

# build an image, then run the container
run name port: (build name)
	podman run \
		--rm \
		-it \
		-d \
		--name brandont.dev-{{name}} \
		-p {{port}}:80 brandont.dev:{{name}}
	podman image prune -f

# stop the latest container
stop name:
	podman stop brandont.dev-{{name}}

# stop a container then remove the images
purge name: (stop name)
	podman image prune -f
	podman rmi brandont.dev:{{name}}

# prune images, volumes, and containers
prune:
	podman image prune -f
	podman container prune -f
	podman volume prune -f

# remove a specific image
rm name:
	podman rmi brandont.dev:{{name}}

# Follow the container's logs
logs name:
	tail -f | podman logs brandont.dev-{{name}}
