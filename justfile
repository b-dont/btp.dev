set positional-arguments
set ignore-comments

# build an image
build name:
	podman build -t brandont.dev:{{name}} -f ./config/{{name}}.Containerfile .

# build an image, then run the container
run name ip: (build name)
	podman run --rm -it -d --name brandont.dev-{{name}} -p {{ip}}:80 brandont.dev:{{name}}

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
