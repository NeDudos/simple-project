FROM python:alpine

WORKDIR app
COPY requirements.txt /app

RUN pip install -r requirements.txt

ENV FLASK_APP=app.py
COPY . /app

EXPOSE 5000
ENTRYPOINT [ "flask","run","--host=0.0.0.0" ]