FROM ruby:2.6.3

RUN apt-get update && apt-get install -qq -y --no-install-recommends \
  build-essential nodejs libpq-dev imagemagick zlib1g-dev \
  libmagickwand-dev libmagickcore-dev vim yarn

RUN mkdir /spotcode
RUN mkdir -p /usr/local/nvm

WORKDIR /spotcode

RUN curl -sL https://deb.nodesource.com/setup_11.x | bash
RUN apt-get install -y nodejs

RUN node -v
RUN npm -v

ADD Gemfile /spotcode/Gemfile
ADD Gemfile.lock /spotcode/Gemfile.lock
ADD package.json /spotcode/package.json
ADD yarn.lock /spotcode/yarn.lock

RUN bundle install
RUN npm install -g yarn
RUN yarn install --check-files

ADD . /spotcode
