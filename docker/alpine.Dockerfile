FROM alpine:latest
RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
RUN wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.35-r1/glibc-2.35-r1.apk
RUN apk add --no-cache glibc-2.35-r1.apk
RUN wget https://dist.databikers.com/x86_64/diana-db-1.4.6-r0.apk
RUN apk add --allow-untrusted --no-cache ./diana-db-1.4.6-r0.apk
RUN echo 'Diana DB v1.4.6 installation finished'
