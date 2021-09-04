IMG = sosomasox/setup-volume-content:v1alpha1

docker-buildx:
	docker run --rm --privileged multiarch/qemu-user-static:register --reset
	docker buildx build --platform linux/amd64,linux/arm64 -t ${IMG} --push .
