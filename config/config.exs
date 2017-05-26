use Mix.Config

config :expert_api,
  ecto_repos: [ExpertApi.Repo]

# Configures the endpoint
config :expert_api, ExpertApi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hwwRcQZcEnHk3+YK/XmWIeWD6knmtO1wpo4BpSwCoWuf12kmyLzb4N1AvRr0nqsz",
  render_errors: [view: ExpertApi.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ExpertApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

import_config "#{Mix.env}.exs"

config  :logger,
    backends: [{LoggerFileBackend, :error_log},
                {LoggerFileBackend, :warn_log},
                {LoggerFileBackend, :info_log}]

config  :logger, :error_log,
    path:   "./log/error.log",
    level:  :error,
    metadata:   ...,
    foramt: "$time ---- !!!ERROR!!! ----  $message\n"

config  :logger, :warn_log,
    path:   "./log/warning.log",
    level:  :warn,
    metadata:   ...,
    format: "$time - $metadata[$level] - $message\n"

config  :logger, :info_log,
    path:   "./log/info.log",
    level:  :info
    metadata:   ...,
    format: "$time - $metadata[$level] - $message\n"
