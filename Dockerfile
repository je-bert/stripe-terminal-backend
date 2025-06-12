FROM ruby:3.1.2-alpine

RUN apk add build-base
RUN gem install bundler:2.3.24
RUN mkdir -p /www/example-terminal-backend
WORKDIR /www/example-terminal-backend

# Then copy the rest of the files
COPY . .
RUN bundle install
EXPOSE 4567

ENTRYPOINT ["ruby", "web.rb", "-o", "0.0.0.0"]
