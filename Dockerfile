FROM openjdk:8-jdk-alpine

LABEL maintainer="shteou@gmail.com"

RUN apk add --update chromium \
  maven \
  && rm -rf /var/cache/apk/*

COPY loop.sh /

CMD sh /loop.sh
