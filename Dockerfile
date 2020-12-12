FROM python:3.9-slim
RUN mkdir /code && mkdir /code/static && mkdir /code/media
COPY requirements.txt /code
RUN pip install -r /code/requirements.txt
COPY . /code
WORKDIR /code
CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000