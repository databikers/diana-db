FROM ubuntu:22.04
RUN echo "deb [arch=amd64 trusted=yes] https://dist.databikers.com stable main" > /etc/apt/sources.list.d/diana-db.list
RUN apt-get update && apt-get install -y ca-certificates && apt-get clean
RUN apt-get update && apt-get install -y diana-db && apt-get clean
RUN echo 'Diana DB v1.4.6 installation finished'
