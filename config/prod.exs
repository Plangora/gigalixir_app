use Mix.Config

# For production, don't forget to configure the url host
# to something meaningful, Phoenix uses this information
# when generating URLs.
#
# Note we also include the path to a cache manifest
# containing the digested version of static files. This
# manifest is generated by the `mix phx.digest` task,
# which you should run after static files are built and
# before starting your production server.
config :gigalixir_phoenix, GigalixirPhoenixWeb.Endpoint,
  http: [:inet6, port: {:system, "PORT"}],
  # url: [host: "${APP_NAME}.gigalixirapp.com", port: 80],
  url: [host: "localhost", port: 4000], # for testing prod locally
  cache_static_manifest: "priv/static/cache_manifest.json",
  secret_key_base: "${SECRET_KEY_BASE}",
  server: true

# Do not print debug messages in production
config :logger, level: :info

config :gigalixir_phoenix, GigalixirPhoenix.Repo,
  url: "${DATABASE_URL}",
  ssl: true,
  pool_size: 2
