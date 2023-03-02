#!/usr/bin/env bash

# TODO: change this to dev config
echo Starting server
printenv
./manage.py runserver 0.0.0.0:8000 --noreload
