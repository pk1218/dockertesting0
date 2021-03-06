##################################################################
# Dockerfile to build unittest container for hit/getHit function #
##################################################################

# Base image is python
FROM python:latest

# Author: Prabhuraj K 
MAINTAINER Prabhuraj K <prabhurajcse@gmail.com>

# Install redis driver for python and the redis mock
RUN pip install redis && pip install mockredispy

RUN echo "Welcome"

# Copy the test and source to the Docker image
ADD src/ /src/

# Change the working directory to /src/
WORKDIR /src/

# Make unittest as the default execution...
ENTRYPOINT python3 -m unittest
