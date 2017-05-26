defmodule ExpertApi.Mixfile do
  use Mix.Project

  def project do
    [app: :expert_api,
     version: "0.0.1",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [extra_applications: [:logger],
    applications: [:mongodb, :poolboy]]
  end

  defp deps do
    [
      {:logger_file_backend, "~> 0.0.9"},
      {:mongodb, ">= 0.0.0"},
      {:poolboy, ">= 0.0.0"}
    ]
  end
end
