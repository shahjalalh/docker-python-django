# docker-python-django

A docker template for django projects

## Installed Software

1. Python 3.5.6
2. Django 2.1.3
3. PostgreSQL 9.6.11

## Steps are done
1. Create an image from Python 3.5
2. Install git 
3. Copy or pull code from git to the working directory
4. Install all requirements.txt packages
5. Install PostgreSQL and configure.
6. Run the web


## Docker Commands:

```
# Docker build from Dockerfile
$ sudo docker build -t shahjalalh/python-django:0.1 .

# Docker run from the image
$ sudo docker run -p 8000:8000 shahjalalh/python-django:0.1

or, Docker run and enter into the bash
$ sudo docker run -it shahjalalh/python-django:0.1 bash

or, Build and run with docker compose
$ sudo docker-compose up

or, rebuild from first build
$ docker-compose up --build
```

## Creating superuser
```
$ sudo docker-compose run web python sample_django_project_for_docker/manage.py migrate
$sudo docker-compose run web python sample_django_project_for_docker/manage.py createsuperuser
```

## Browsing program
In the browser address bar
```
localhost:8000
localhost:8000/admin
```

## Inter into the running docker container
```
$ sudo docker ps
$ sudo docker exec -it <container-id> bash
```
