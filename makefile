lock:
	DOCKER_BUILDKIT=1 docker build -t app-build:latest -f Dockerfile-lock .
	docker run -it -v .:/app app-build:latest pipenv lock

buildshell:
	docker run -it -v .:/app app-build:latest pipenv install && /bin/bash

build:
	docker build -f Dockerfile -t app:latest .

up:
	docker compose up -d

makemigrations:
	docker-compose exec app python manage.py makemigrations

migrate:
	docker-compose exec app python manage.py migrate

superuser:
	docker-compose exec app python manage.py createsuperuser
