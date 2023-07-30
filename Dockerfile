FROM debian:latest
WORKDIR /my
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y sudo 
RUN apt install -y curl wget sudo tar git
EXPOSE 9999
RUN curl -sSL https://resource.fit2cloud.com/1panel/package/quick_start.sh -o quick_start.sh && bash quick_start.sh
