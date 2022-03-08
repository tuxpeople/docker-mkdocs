FROM python:alpine3.14

VOLUME  /doc
WORKDIR /doc

COPY requirements.txt /

# hadolint ignore=DL3018
RUN apk add --no-cache inotify-tools && python3 -m pip --no-cache-dir install -r /requirements.txt

EXPOSE 8000

ENTRYPOINT ["mkdocs"]
