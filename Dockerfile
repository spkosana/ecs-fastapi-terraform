FROM python:3.7

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONBUFFERED 1

WORKDIR /usr/src
COPY ./app ./app
COPY requirements.txt requirements.txt
RUN python -m pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt --quiet

EXPOSE 8000

RUN chmod 777 ./app/main.py 
ENTRYPOINT ["python3", "./app/main.py"]