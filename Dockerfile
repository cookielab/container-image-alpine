ARG ALPINE_VERSION
FROM alpine:${ALPINE_VERSION}

RUN adduser -D -h /container -s /bin/sh -u 1987 container

# container user
USER 1987
WORKDIR /container

ONBUILD USER root
