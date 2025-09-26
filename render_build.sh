#!/usr/bin/env bash
# Exit on error
set -o errexit

# Install dependencies
pip install -r winespa/requirements.txt

# Run migrations
cd winespa
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput
