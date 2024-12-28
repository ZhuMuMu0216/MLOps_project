# Base image
FROM python:3.10-slim

RUN apt update && \
    apt install --no-install-recommends -y build-essential gcc && \
    apt clean && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y git

COPY pyproject.toml pyproject.toml
COPY requirements.txt requirements.txt
COPY data/ data/
COPY src/ /src/
COPY models/ /models/
COPY reports/ reports/

WORKDIR /
RUN --mount=type=cache,target=/root/.cache/pip pip install -r requirements.txt
RUN --mount=type=cache,target=/root/.cache/pip pip install . --no-deps
# RUN pip install -r requirements.txt --no-cache-dir
# RUN pip install . --no-deps --no-cache-dir

ENTRYPOINT ["python", "-u", "src/mlops_project/train.py"]
