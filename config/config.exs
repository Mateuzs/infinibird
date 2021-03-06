# This file is responsible for configuring application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :infinibird,
  ecto_repos: [Infinibird.Repo]

# Configures the endpoint
config :infinibird, InfinibirdWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "xTiN0T4LZISG30iVAZZZiOtRXzzuG9Y8sF3i8W+5ghSIl6vy0fwJXWp13UuWHbgY",
  render_errors: [view: InfinibirdWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Infinibird.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "nGWUYpFZ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Phoenix Live View
config :phoenix,
  template_engines: [leex: Phoenix.LiveView.Engine]

# Jason for parsing data in Chartkick
config :chartkick, json_serializer: Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

config :infinibird,
  infinibird_service_basic_auth_config: [
    username: "c3VwZXJfc2VjcmV0X3VzZXI=",
    password: "cGFzc3dvcmRfc3VwZXJfc2VjcmV0",
    realm: "Infinibird Area"
  ]

# token crucial data
config :phoenix, :phoenix_token_data,
  salt: "a5G6A24zx5c",
  secret: "faSlfzE4g8k7kTxvFAgeBvAVA0OR1vkPbTi8mZ5m"

# argon salt to hash a password
config :infinibird, :argon, argon_salt: "J+pwEEoGNeHnBfgB"
