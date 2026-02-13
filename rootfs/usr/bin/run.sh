#!/bin/bash
cd /data
exec uvicorn main:app --host 0.0.0.0 --port 1880
