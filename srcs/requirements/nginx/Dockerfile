FROM debian:latest

WORKDIR /app

#USER pgouasmi

COPY test /app
COPY script.sh /app

RUN apt update

ENTRYPOINT ["/app/script.sh"]