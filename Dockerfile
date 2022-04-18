FROM elixir:latest

RUN mix local.hex --force \
    && mix archive.install --force hex phx_new \
    && mix local.rebar --force

ENV APP_HOME /app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

EXPOSE 4000

CMD ["mix", "phx.server"]