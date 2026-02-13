FROM python:3.12-alpine

WORKDIR /data

COPY rootfs/data/requirements.txt .
RUN pip install --no-cache-dir --break-system-packages -r requirements.txt

COPY rootfs/ /

EXPOSE 1880

CMD ["python3", "-m", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "1880"]
