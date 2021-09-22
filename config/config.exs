# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :trreeno,
  ecto_repos: [Trreeno.Repo]

# Configures the endpoint
config :trreeno, TrreenoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "z5jmHD7bNDgv1Sd8NvxHLzBxXhageks3Lir2S4I8gPRcjHooIn3LVGOe1lRnD4Bn",
  render_errors: [view: TrreenoWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Trreeno.PubSub,
  live_view: [signing_salt: "NJuqRWkg"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
