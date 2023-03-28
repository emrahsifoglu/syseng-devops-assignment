FROM python:3.11.2-alpine

WORKDIR /app

RUN apk --update --upgrade add --no-cache 

RUN python -m pip install --upgrade pip

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY app.py .

ENV FLASK_APP=app.py

CMD flask run -h 0.0.0.0 -p 5001
