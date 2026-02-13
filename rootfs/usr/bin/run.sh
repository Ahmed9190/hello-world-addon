#!/bin/bash
cd /data
uvicorn main:app --host 0.0.0.0 --port 1880
