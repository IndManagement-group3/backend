#!/usr/bin/env bash
. venv/bin/activate
export BESHBARMAK_CONFIG=configs.prod
gunicorn -w 4 --certfile fullchain.pem --keyfile privkey.pem -b 0.0.0.0:8000 server:app
