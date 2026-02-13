ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache python3 py3-pip

WORKDIR /data

COPY rootfs/data/requirements.txt .
RUN pip3 install --no-cache-dir --break-system-packages --index-url https://pypi.org/simple -r requirements.txt

COPY rootfs/ /

EXPOSE 1880

RUN chmod a+x /usr/bin/run.sh

CMD ["/usr/bin/run.sh"]
