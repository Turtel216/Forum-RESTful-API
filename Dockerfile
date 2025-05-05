
FROM	elixir:1.15-alpine
RUN	apk add --no-cache \
	build-base \
	git \
	nodejs \
	npm
ENV	MIX_ENV	dev
WORKDIR	/app
COPY	mix.exs	mix.lock	./
COPY	config	config
COPY	priv	priv
COPY	lib	lib
COPY	assets	assets
RUN	mix local.hex --force \
	&& mix local.rebar --force
RUN	mix deps.get
RUN	mix deps.compile
WORKDIR	/app
RUN	mix compile
COPY	config/dev.exs	config/dev.exs
CMD	["/bin/sh","-c","mix ecto.setup \u0026\u0026 mix phx.server"]
