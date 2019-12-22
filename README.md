# Cookielab - Alpine Linux base image

This image is based on [official Alpine Linux image](https://hub.docker.com/_/alpine?tab=description).

We install only SSL/TLS libs and CA certificates. Also creating `container` user (UID 1987) in group `nobody` with homedir set to `/container`.

## Usage

There is no `latest` tag on this image.

```Docker
FROM cookielab/alpine:3.11

# ...
# your commands
# ...

USER 1987

ONBUILD USER root
```
