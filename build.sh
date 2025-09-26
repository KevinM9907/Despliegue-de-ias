#!/usr/bin/env bash
# Exit on error
set -o errexit

# Install dependencies
pip install -r winespa/requirements.txt

# Run migrations
python winespa/manage.py migrate

# Collect static files
python winespa/manage.py collectstatic --noinput
