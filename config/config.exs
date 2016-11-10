# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :nested_forms,
  namespace: NF,
  ecto_repos: [NF.Repo]

# Configures the endpoint
config :nested_forms, NF.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LT5zQiFGXxZI3Bb8KFsL3op8KLAf9Q8uMOdGatlpQ45rGuHcQ3CjU3ENTOgNh2Y9",
  render_errors: [view: NF.ErrorView, accepts: ~w(html json)],
  pubsub: [name: NF.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
