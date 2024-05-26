FROM ruby:2.7.7

RUN mkdir /gtfo

WORKDIR /gtfo

COPY ./* /gtfo/.

RUN bundle install


ENV HOST "0.0.0.0"
ENV PORT 80

CMD bundle exec jekyll serve --host "$HOST" --port "$PORT"