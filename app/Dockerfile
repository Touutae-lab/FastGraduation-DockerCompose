# syntax=docker/dockerfile:1
FROM python:3.9-alpine

WORKDIR /code

COPY . .

ENV FLASK_APP=src/app.py
ENV FLASK_RUN_HOST=0.0.0.0

RUN apk add --no-cache gcc musl-dev linux-headers py3-sphinx
RUN python setup.py install build

EXPOSE 5000

ENTRYPOINT python setup.py build_sphinx
ENTRYPOINT flask run --reload

