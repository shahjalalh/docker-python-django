# Specify a base image
# FROM python:3.5.6-jessie # 270MB+
# FROM python:3.5.6-slim-jessie # 50MB+
FROM python:3.5.6-slim-jessie

# Install git
RUN apt-get update && apt-get install -y git

# Set working directory
WORKDIR /usr/app

# Taking source codes by copy or clone from git
# Copy the present folder content to the /usr/app directory
# COPY ./ ./

# or, clone from git
RUN git clone https://github.com/shahjalalh/sample_django_project_for_docker.git

# change directory
RUN cd sample_django_project_for_docker

# Install the requirements
RUN pip install -r requirements.txt

# Default command
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
