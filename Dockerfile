FROM ruby:3.2-alpine

ENV LANG C.UTF-8

WORKDIR /app

EXPOSE 4000

COPY . /app

RUN apk update && \
    apk add --no-cache build-base git && \
    gem install bundler && \
    bundle install && \
    rm -r /var/cache/apk/

CMD ["./scripts/web.sh"]
