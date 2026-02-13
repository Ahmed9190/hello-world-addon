#!/bin/bash
cd /data
exec python3 -m uvicorn main:app --host 0.0.0.0 --port 1880
