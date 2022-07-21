FROM sphinxdoc/sphinx AS build

WORKDIR /
COPY . .

RUN pip install sphinx_rtd_theme && make html -B

FROM python:3.9-alpine

WORKDIR /docs
COPY --from=build /docs/docs/_build/html .

CMD ["python", "-m", "http.server", "8000"]

