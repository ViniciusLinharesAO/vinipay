# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :vinipay,
  ecto_repos: [Vinipay.Repo]

# Configures the endpoint
config :vinipay, VinipayWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ts6vYLtvd9GzSTsRTM4Zj9h7v5A1oyU0jFZCEotsEXYb6K6Nzph5/qTD52f3jPwP",
  render_errors: [view: VinipayWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Vinipay.PubSub,
  live_view: [signing_salt: "rwfAN4Nn"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
