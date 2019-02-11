FROM openjdk:8-jdk

LABEL maintainer="shteou@gmail.com"

RUN apt-get update && apt install -y --no-install-recommends \
  firefox-esr \
  maven

RUN useradd -ms /bin/bash webdriver

COPY loop.sh /

USER webdriver

CMD sh /loop.sh
