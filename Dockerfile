FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev mysql-client
RUN mkdir /rails-docker
WORKDIR /tmp
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install
ADD . /rails-docker
WORKDIR /rails-docker
