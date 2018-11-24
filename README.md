# docker-python-django

<img src="./images/under-construction.png" alt="Under Construction" width="287" height="257"/>

A docker template for django projects

## Installed Software

1. Python 3.5.6
2. Django 2.1
3. Postgresql

## Steps are done
1. Create an image from Python 3.5
2. Install git 
3. Copy or pull code from git to the working directory
4. Install all requirements.txt packages
5. Install Postgresql and configure.
6. Run the web


Commands:

```
$ sudo docker build -t shahjalalh/python-django .

$ sudo docker run -p 8080:8080 shahjalalh/python-django
or,
$ sudo docker run -it shahjalalh/python-django sh
```
