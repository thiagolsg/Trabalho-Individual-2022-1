FROM python:3.9.5-slim-buster

WORKDIR /app

COPY . .

RUN apt-get update \
    && apt-get -y install libpq-dev gcc
    
RUN pip3 install -r requirements.txt

RUN python3 manage.py makemigrations

RUN python3 manage.py migrate

EXPOSE 8000

CMD ["python3", "manage.py", "runserver","0.0.0.0:8000"]