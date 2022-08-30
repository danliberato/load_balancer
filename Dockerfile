# Dockerfile

# pull the official docker image
FROM python:3.9.4-slim AS build

# set work directory
WORKDIR /app

# set env variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ARG app_id
RUN echo "app_id = $app_id"
ENV APPLICATION_ID $app_id

# install dependencies
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# copy source code
COPY src /app

EXPOSE 8080

CMD python -m uvicorn main:app --reload --host 0.0.0.0 --port 8080