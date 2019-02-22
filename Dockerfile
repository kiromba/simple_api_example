FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /react-backend
WORKDIR /react-backend
COPY Gemfile /react-backend/Gemfile
COPY Gemfile.lock /react-backend/Gemfile.lock
RUN bundle install
COPY . /react-backend

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3001

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
