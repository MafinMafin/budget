FROM ruby:2.4.3

RUN apt update && apt upgrade -yy
WORKDIR /app
ARG RAILS_ENV=production
ENV RAILS_ENV ${RAILS_ENV}
ENV RAILS_LOG_TO_STDOUT true

RUN gem install bundler
COPY Gemfile Gemfile.lock /
RUN bundle install
COPY . ./
RUN bundle exec rake assets:precompile

EXPOSE 80

CMD ["bundle", "exec", "rails", "server", "-p", "80"]
