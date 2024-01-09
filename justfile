set positional-arguments
set ignore-comments

# build an image
build name:
	podman build \
		-t brandont.dev:{{name}} \
		-f config/{{name}}.Containerfile \
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

kill name: (stop name)(prune)

# prune all hanging images, containers, and volumes
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
