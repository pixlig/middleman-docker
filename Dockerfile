FROM ruby:2.6.3-alpine3.10

ARG MIDDLEMAN_VERSION=4.3.4

RUN apk --no-cache add \
  nodejs=10.16.3-r0 \
  ruby-dev=2.5.5-r0 \
  build-base=0.5-r1 \
  git=2.22.0-r0

RUN gem install --no-document \
    middleman --version $MIDDLEMAN_VERSION

WORKDIR /app
