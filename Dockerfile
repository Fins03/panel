FROM debian:latest
WORKDIR /my
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y sudo 
RUN apt install -y curl wget sudo tar git
EXPOSE 9999
RUN wget -qO- https://get.casaos.io | sudo bash
