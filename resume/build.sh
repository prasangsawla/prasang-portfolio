#!/usr/bin/env bash

# Exit on error
set -o errexit  

# Use python explicitly
pip install -r requirements.txt

# Migrate database
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput
