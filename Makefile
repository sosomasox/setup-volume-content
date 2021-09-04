
docker-build:
	docker build -t setup-volume-content:arm64 .
	docker tag setup-volume-content:arm64 sosomasox/setup-volume-content:arm64
	docker push sosomasox/setup-volume-content:arm64
