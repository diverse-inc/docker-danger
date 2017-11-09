FROM ruby:2.4.1-alpine

ENV DANGER_VERSION 5.5.4

RUN apk add --no-cache --virtual .gem-build-deps build-base && \
    gem install danger -v $DANGER_VERSION && \
    apk del .gem-build-deps

RUN apk update &&\
    apk upgrade && \
    apk add --no-cache \
    bash \
    git

WORKDIR /workdir
ENTRYPOINT ["danger"]

