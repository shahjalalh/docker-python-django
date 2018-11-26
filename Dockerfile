# Specify a base image
# FROM python:3.5.6-stretch # 350MB+
# FROM python:3.5.6-slim-stretch # 40MB+
FROM python:3.5.6-slim-stretch

# Install git
RUN apt-get update && apt-get install -y git

# Set working directory
WORKDIR /usr/app

# Taking source codes by copy or clone from git
# Copy the present folder content to the /usr/app directory
# COPY ./ ./

# or, clone from git
RUN git clone https://github.com/shahjalalh/sample_django_project_for_docker.git

# Install the requirements
RUN pip install -r sample_django_project_for_docker/requirements.txt

# Default command
CMD ["python", "sample_django_project_for_docker/manage.py", "migrate", "--noprint"]
CMD ["python", "sample_django_project_for_docker/manage.py", "runserver", "0.0.0.0:8000"]
