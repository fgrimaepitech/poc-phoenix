# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :backend,
  ecto_repos: [Backend.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :backend, BackendWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1DLTiiH2sjRHUgCuJlnj7D1pryJkYesXPohRucZR+CMROXguRdQOboSG+/lGuOTI",
  render_errors: [view: BackendWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Backend.PubSub,
  live_view: [signing_salt: "kc80jEDK"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :backend, BackendWeb.Auth.Guardian,
  issuer: "backend",
  secret_key: "zbW/nh4gJvtMHCOCj1coqEzNRbLI1lQuPcBUg90r5gdo2ikrdp0uH2Q+R87dOZ+1"


# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
