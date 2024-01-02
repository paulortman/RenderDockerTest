lock:
	DOCKER_BUILDKIT=1 docker build -t app-build:latest -f Dockerfile-lock .
	docker run -it -v .:/app app-build:latest pipenv lock

buildshell:
	docker run -it -v .:/app app-build:latest pipenv install && /bin/bash

build:
	docker build -f Dockerfile -t app:latest .
