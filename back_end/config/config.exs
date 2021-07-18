# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :back_end,
  ecto_repos: [BackEnd.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :back_end, BackEndWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "RH8U7wCOOfVk54moWHBJDMW7c/brtbEHUCbvb9cM41HHONSvf7Hfa2KfHcgF08tH",
  render_errors: [view: BackEndWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: BackEnd.PubSub,
  live_view: [signing_salt: "lFLx8/dh"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
