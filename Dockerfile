FROM python:3.7-slim

WORKDIR /app

RUN apt-get update \
    && apt-get install -y --no-install-recommends git build-essential \
    && rm -rf /var/lib/apt/lists/* \
    && pip install detect-secrets

ENTRYPOINT ["detect-secrets", "scan", "."]