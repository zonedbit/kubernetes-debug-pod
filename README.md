# kubernetes-debug-pod

A simple docker container for rapidly deployment and debugging in a Kubernetes.

## Build a new docker image

For build and test the docker image on a local computer.

``` bash
docker build . -t local/kubernetes-debug-pod
```

## Local - docker only

``` bash
# Start with bash
docker run -i -t local/kubernetes-debug-pod /bin/bash

# Start with zsh
docker run -i -t local/kubernetes-debug-pod /bin/zsh
```

## Remote - deploy to Kubernetes

``` bash
# Start with bash
kubectl run ubuntu --image=zonedbit/kubernetes-debug-pod --rm -it --restart=Never /bin/bash

# Start with zsh
kubectl run ubuntu --image=zonedbit/kubernetes-debug-pod --rm -it --restart=Never /bin/zsh
```

### Explanation

* **run**, create and run a container
* **zonedbit/kubernetes-debug-pod**, is the name of the container and can be replaced by any valid name
* **rm**, delete the container image after execution
* **it**, interactive terminal
* **restart=Never**, after termination the container should not restart;
         default behavior of Kubernetes
