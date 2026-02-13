ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache python3 py3-pip

COPY rootfs /

RUN pip3 install --no-cache-dir --break-system-packages -r /data/requirements.txt

WORKDIR /data
RUN chmod a+x /usr/bin/run.sh

CMD [ "/usr/bin/run.sh" ]
