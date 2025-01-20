ARG BASE_IMAGE_TAG=stream10
FROM quay.io/centos-bootc/centos-bootc:${BASE_IMAGE_TAG}

# Make args available to scripts
ARG BASE_IMAGE_TAG

COPY ./files/_base /
COPY ./scripts /tmp/scripts

RUN /tmp/scripts/00-setup.sh && \
    /tmp/scripts/01-build.sh && \
    /tmp/scripts/02-cleanup.sh && \
    rm -rf /tmp/scripts && \
    bootc container lint
