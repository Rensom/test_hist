use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :expert_api, ExpertApi.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
#config :logger, level: :warn

# Configure your database
#config :expert_api, ExpertApi.Repo,
#  adapter: Ecto.Adapters.Postgres,
#  username: "postgres",
#  password: "postgres",
#  database: "api_example_test",
#  hostname: "localhost",
#  pool: Ecto.Adapters.SQL.Sandbox
