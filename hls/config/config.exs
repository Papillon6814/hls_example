# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :hls,
  ecto_repos: [Hls.Repo]

# Configures the endpoint
config :hls, HlsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "w6aU/gw1oPegwLuf7Vu15kT2JNxJncr/TcxfJNiNQxR8IBKrXn/Ufrg3vlRXWTcH",
  render_errors: [view: HlsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Hls.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "BvvVqyfgC4Z3F1BrEaCKCL4Rsmk5L8Nn"
  ]

config :hls, Hls.Accounts.Guardian,
  issur: "hls",
  secret_key: "M2PQfcLFDcLw1v71iI11MUin3GpMnTqdXqtvA3kYEJah6XNS8MkMv1vC8wxMN+5N"

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
