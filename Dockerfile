FROM elixir:1.13.0

ARG PROJECT_DIR /app

ENV DIR $PROJECT_DIR

RUN apt-get update
RUN apt-get install --yes build-essential inotify-tools postgresql-client

WORKDIR $DIR
COPY . $DIR
RUN chmod +x $DIR/run.sh

RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix do deps.get, deps.compile

ENTRYPOINT /bin/sh $DIR/run.sh
