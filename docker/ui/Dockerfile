FROM python:3.6.15-buster

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY . /usr/src/app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD gunicorn --timeout ${RDF_VALIDATOR_GUNICORN_TIMEOUT-1200} --workers ${RDF_VALIDATOR_GUNICORN_UI_WORKERS-12} --bind 0.0.0.0:${RDF_VALIDATOR_UI_PORT} --reload validator.entrypoints.ui.run:app --log-file ${RDF_VALIDATOR_UI_LOGS} --log-level ${RDF_VALIDATOR_LOG_LEVEL}