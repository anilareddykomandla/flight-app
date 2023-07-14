#!/bin/bash

set -e

echo "${0}: running migrations."
python manage.py makemigrations --merge
python manage.py migrate --noinput
python manage.py makemigrations --merge

#python manage.py runserver
#<<comment
gunicorn app.wsgi:application \
    --env DJANGO_SETTINGS_MODULE=app.settings \
    --name flight \
    --bind 0.0.0.0:8000 \
    --timeout 600 \
    --workers 4 \
    --log-level=info \
    --reload
#comment
