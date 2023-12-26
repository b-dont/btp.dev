alias dev := run-dev

build-image:
	podman build -t brandont.dev:latest .

run-dev: build-image
	podman run --rm -it -p 8787:80 brandont.dev:latest
