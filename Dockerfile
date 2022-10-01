ARG ARCH=linux/amd64

# pass --build-arg linux/amd64 or linux/arm64/v8
FROM --platform=${ARCH} ruby:3.0

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

# Tell Docker to listen on port 4567.
EXPOSE 4567

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "4567"]