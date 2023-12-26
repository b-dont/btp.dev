set positional-arguments
set ignore-comments

# build an image
build name:
	podman build -t brandont.dev:{{name}} .

# build an image, then run the container
run name: (build name)
	podman run --rm -it -d --name brandont.dev-{{name}} -p 8787:80 brandont.dev:{{name}}

# stop the latest container
stop-container:
	podman stop --latest

# stop a container then remove the images
down name: stop-container
	podman image prune
	podman rmi brandont.dev:{{name}}

# remove a specific image
rm name:
	podman rmi brandont.dev:{{name}}
