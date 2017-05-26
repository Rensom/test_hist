defmodule ExpertApi.Mixfile do
  use Mix.Project

  def project do
    [app: :expert_api,
     version: "0.0.1",
     elixir: "~> 1.4",
     elixirc_paths: elixirc_paths(Mix.env),
     compilers: [:phoenix, :gettext] ++ Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [
      mod:  {ExperApi, []},
      extra_applications: [:logger],
      applications: [:phoenix, :phoenix_pubsub, :phoenix_html, 
                      :gettext, :cowboy, :mongodb, :poolboy]]
  end

  defp deps do
    [
      {:phoenix, "~> 1.2.4"},
      {:phoenix_pubsub, "~> 1.0"},
      {:phoenix_html, "~> 2.6"},
      {:phoenix_live_reload, "~> 1.0", only: :dev},
      {:gettext, "~> 0.11"},
      {:cowboy, "~> 1.0"},
      {:logger_file_backend, "~> 0.0.9"},
      {:mongodb, ">= 0.0.0"},
      {:poolboy, ">= 0.0.0"}]
  end
end
