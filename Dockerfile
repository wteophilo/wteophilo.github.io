FROM ruby:2.6.3-alpine3.9

ENV LANG C.UTF-8

WORKDIR /gem

COPY . /gem

RUN gem install bundler:2.0.1 && \
    bundler config default 2.0.1 && \
    bundle config --global --jobs `expr $(grep processor /proc/cpuinfo | wc -l) - 1` && \
    apk update && \
    apk add --no-cache build-base git && \
    bundle install && \
    rm -r /var/cache/apk/