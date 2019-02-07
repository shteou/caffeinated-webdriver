FROM alpine:3.9

LABEL maintainer="shteou@gmail.com"

RUN apk add --update chromium \
  openjdk8 \
  maven \
  && rm -rf /var/cache/apk/*

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
ENV PATH $JAVA_HOME/bin:$PATH

COPY loop.sh /

CMD sh /loop.sh
