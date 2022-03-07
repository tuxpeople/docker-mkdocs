FROM python:alpine3.14

VOLUME  /doc
WORKDIR /doc

COPY requirements.txt /

RUN python3 -m pip install --upgrade pip && \ 
    python3 -m pip install -r /requirements.txt

EXPOSE 8000

ENTRYPOINT ["mkdocs"]
