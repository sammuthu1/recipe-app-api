# Specify the image of the Docker Container
# Search in dockerhub.com
FROM python:3.7-alpine

# (optional) the name of the maintener
MAINTAINER Sam Muthukumarana

# The environment variables
# The PYTHONUNBUFFERED ensures that the python output is set straight
# to the terminal with out buffering it first
ENV PYTHONUNBUFFERED 1

# Add dependencies
COPY ./requirements.txt /requirements.txt

# Execute commands as if you were executing it in a terminal
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

# Create a user that runs the application
# For security, app not running with root privileges
# RUN adduser -D user
#RUN adduser user

# Switch to the user
#USER user
