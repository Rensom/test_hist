defmodule ExpertApi do
  use Application
  @moduledoc """
  Documentation for ExpertApi.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ExpertApi.hello
      :world

  """
  def start(_type, _args) do
    import Supervisor.Spec

    # Define workers and child supervisors to be supervised
    children = [
      # Start the Ecto repository
      supervisor(ExpertApi.Repo, []),
      # Start the endpoint when the application starts
      supervisor(ExpertApi.Endpoint, []),
      # Start your own worker by calling: ApiExample.Worker.start_link(arg1, arg2, arg3)
      # worker(ApiExample.Worker, [arg1, arg2, arg3]),
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ExpertApi.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    ExpertApi.Endpoint.config_change(changed, removed)
    :ok
  end
end
