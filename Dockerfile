FROM ruby:2.5.1

RUN apt-get update -qq && \
    apt-get install -y build-essential \
                       nodejs

RUN mkdir /WebApp
WORKDIR /WebApp

ADD Gemfile /WebApp/Gemfile
ADD Gemfile.lock /WebApp/Gemfile.lock

RUN bundle install

ADD . /WebApp

RUN mkdir -p tmp/sockets