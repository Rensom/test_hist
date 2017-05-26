use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or you later on).
config :expert_api, ExpertApi.Endpoint,
  secret_key_base: "TTV2tVP6r5BbM84wj3qd7pqiJWFq51s8hDgacfkJTR0DjqnmxjVFWbmUh/C47xVu"

# Configure your database
#config :expert_api, ExpertApi.Repo,
#  adapter: Ecto.Adapters.Postgres,
#  username: "postgres",
#  password: "postgres",
#  database: "api_example_prod",
#  pool_size: 20
