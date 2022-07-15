# syntax=docker/dockerfile:1
FROM python:3.9-alpine

WORKDIR /code
COPY . .

ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

RUN apk add --no-cache gcc musl-dev linux-headers
RUN python setup.py install build

EXPOSE 5000

CMD ["flask", "run", "--reload"]

