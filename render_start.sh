#!/usr/bin/env bash
# Exit on error
set -o errexit

# Start Django server
cd winespa
python manage.py runserver 0.0.0.0:$PORT
