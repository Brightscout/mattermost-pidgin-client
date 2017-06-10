# Pull base image.
FROM ubuntu:14.04

# Install nsis
RUN apt-get update && apt-get -y install nsis
