# Smoofit: Docker file for mosquitto

# Set the base image to debian:jessie
FROM debian:jessie

# File Author / Maintainer
MAINTAINER Mikael Trieb <mikael@smoofit.com>

ENV DEBIAN_FRONTEND noninteractive

# Update the repository sources list
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y wget


# Install mosquitto
RUN wget -q -O - http://repo.mosquitto.org/debian/mosquitto-repo.gpg.key | apt-key add -
RUN wget -q -O /etc/apt/sources.list.d/mosquitto-jessie.list http://repo.mosquitto.org/debian/mosquitto-jessie.list
RUN apt-get update
RUN apt-get install -y mosquitto

# Copy config files to image
COPY config/conf.d/ /etc/mosquitto/conf.d/

# The folder with the cetificates are mounted from host at 'run'

# Create folder to for mosquitto.passwd and mosquitto.acl
RUN mkdir /opt/mosquitto

# Expose ports to be used
EXPOSE 1883 8883 9001 9883

# Define
CMD /usr/sbin/mosquitto -c /etc/mosquitto/mosquitto.conf
