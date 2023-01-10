FROM alpine:3.17

LABEL maintainer "patrik@votocek.cz"
LABEL maintainer "sodae@email.cz"

RUN apk --update --no-cache upgrade
RUN apk --update --no-cache add libressl openssl ca-certificates
RUN adduser -D -G nobody -h /container -g container -s /bin/sh -u 1987 container

WORKDIR /container
USER 1987

ONBUILD USER root
