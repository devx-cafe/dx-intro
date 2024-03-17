
FROM ruby:3.2.3-bullseye

WORKDIR /app
EXPOSE 4000

# Liquid must run in UTF-8 env to support BOM characters
RUN apt-get update && \
    apt-get install -y locales && \
    echo "en_US UTF-8" > /etc/locale.gen && \
    locale-gen en_US UTF-8

ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_CTYPE=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8
