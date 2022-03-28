FROM elixir:1.13.0

RUN apt-get update
RUN apt-get install --yes build-essential inotify-tools postgresql-client
RUN mix local.hex --force
RUN mix local.rebar --force
