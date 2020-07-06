# Pull base image
FROM python:3.7

# Set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
RUN mkdir -p /usr/src/app_project
WORKDIR /usr/src/app_project

# Install dependencies
RUN python -m pip install --upgrade pip
COPY requirements.txt requirements.txt
RUN python -m pip install -r requirements.txt

# Copy project
COPY . /usr/src/app_project

EXPOSE 8000

#Migrate the app
CMD python /usr/src/app_project/manage.py migrate
CMD python /usr/src/app_project/manage.py makemigrations

# Launch the app
CMD python /usr/src/app_project/manage.py runserver 0.0.0.0:8000
