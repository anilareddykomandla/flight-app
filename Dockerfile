FROM python:3.9-slim

COPY ./requirements.txt /requirements.txt
COPY . /flight
WORKDIR /flight

RUN python3 -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    /py/bin/pip install -r /requirements.txt && \
    adduser --disabled-password --no-create-home django-user

ENV PATH="/py/bin:$PATH"
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

USER django-user

COPY ./entry_point.sh /flight/entry_point.sh
# Gunicorn as app server
#CMD exec ls -l .
#CMD while true; do sleep 1000; done
#CMD py ../manage.py migrate
#CMD exec py ../manage.py makemigrations
#CMD exec py ../manage.py runserver
#CMD exec gunicorn --bind 0.0.0.0:$PORT --workers 1 --threads 8 --timeout 0 app.wsgi:application
USER root
RUN chmod +x /flight/entry_point.sh
ENTRYPOINT ["/flight/entry_point.sh"]
