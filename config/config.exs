# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :web,
  ecto_repos: [Web.Repo]

# Configures the endpoint
config :web, Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "wM1pNPxLlbx6+FwCIJZ2vmKfkvt25U+XGZG6OIaooAJS6wmCpD4wvLoiKQkO+JUL",
  render_errors: [view: Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Web.PubSub,
           adapter: Phoenix.PubSub.PG2]


config :logger,
  backends: [{LoggerFileBackend, :error_log}]


config :logger, :error_log,
  path: "log/error.log",
  level: :error,
  format: "$time $metadata[$level] $message \n",
  metadata: [:request_id]


# Configures Elixir's Logger
config :logger, :console,
  path: "log/console.log",
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
