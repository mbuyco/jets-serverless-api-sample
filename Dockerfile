FROM ruby:2.7-alpine

# Install dependencies
RUN apk --no-cache update && apk add curl py3-pip npm

# Install yarn
RUN npm i -g yarn

# Install awscli
RUN pip install awscli

WORKDIR /app
