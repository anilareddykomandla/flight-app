FROM python:3.9-slim

COPY ./requirements.txt /requirements.txt
COPY . /flight
WORKDIR /flight

RUN apt-get update && apt-get install -y --no-install-recommends \
build-essential \
python3-dev \
python-dev \
libmariadb-dev-compat \
libmariadb-dev

RUN python3 -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    /py/bin/pip install -r /requirements.txt && \
    adduser --disabled-password --no-create-home django-user

ENV PATH="/py/bin:$PATH"
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

USER django-user

COPY ./entry_point.sh /flight/entry_point.sh

USER root
RUN chmod +x /flight/entry_point.sh
ENTRYPOINT ["/flight/entry_point.sh"]
