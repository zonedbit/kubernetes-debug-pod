IMAGE_NAME ?= kubernetes-debug-pod
IMAGE_TAG ?= latest
REGISTRY ?= localhost

.PHONY: help
help:
	@echo "Available targets:"
	@echo "  make build       - Build the container image"
	@echo "  make run         - Run the container"
	@echo "  make push        - Push the image to registry"
	@echo "  make clean       - Remove the image"
	@echo "  make help        - Show this help message"

.PHONY: build
build:
	podman build -t $(REGISTRY)/$(IMAGE_NAME):$(IMAGE_TAG) .

.PHONY: run
run:
	podman run -it --rm --cap-drop=ALL $(REGISTRY)/$(IMAGE_NAME):$(IMAGE_TAG) zsh

.PHONY: clean
clean:
	podman rmi $(REGISTRY)/$(IMAGE_NAME):$(IMAGE_TAG)
