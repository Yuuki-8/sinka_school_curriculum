# Dockerfile
FROM ruby:2.7.5

RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs vim

RUN apt-get update && apt-get install -y curl apt-transport-https wget && \
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
apt-get update && apt-get install -y yarn

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
        && apt-get install -y nodejs

RUN mkdir -p /var/www/app

WORKDIR /var/www/app

ADD Gemfile /var/www/app/Gemfile
ADD Gemfile.lock /var/www/app/Gemfile.lock

RUN gem install bundler
RUN bundle install

RUN rails webpacker:install
ADD . /var/www/app

RUN mkdir -p tmp/sockets
RUN mkdir -p tmp/pids