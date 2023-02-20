#!/bin/bash
set -e
gunicorn -b 0.0.0.0:34801 app:app &
python server.py 34802 -b 0.0.0.0 &
wait
