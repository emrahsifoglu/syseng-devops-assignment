FROM python:3.11.2-alpine

RUN apk --update --upgrade add --no-cache 

RUN python -m pip install --upgrade pip

RUN mkdir /var/www/
WORKDIR /var/www/

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY src .

ENV FLASK_APP=main.py
EXPOSE 5001
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD curl -f http://localhost:5001/health || exit 1
ENTRYPOINT flask run -h 0.0.0.0 -p 5001
