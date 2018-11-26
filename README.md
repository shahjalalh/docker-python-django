# docker-python-django

A docker template for django projects

<img src="./images/under-construction.png" alt="Under Construction" width="187" height="167"/>


## Installed Software

1. Python 3.5.6
2. Django 2.1.3
3. Postgresql 9.6.11 (not included yet)

## Steps are done
1. Create an image from Python 3.5
2. Install git 
3. Copy or pull code from git to the working directory
4. Install all requirements.txt packages
5. Install Postgresql and configure.
6. Run the web


## Docker Commands:

```
$ sudo docker build -t shahjalalh/python-django:0.1 .

$ sudo docker run -p 8000:8000 shahjalalh/python-django:0.1

or,
$ sudo docker run -it shahjalalh/python-django:0.1 bash

or,
$ sudo docker-compose up

or, if want to rebuild
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
