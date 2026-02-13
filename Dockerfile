ARG BUILD_FROM
FROM $BUILD_FROM

COPY rootfs /

RUN echo "Hello World"
