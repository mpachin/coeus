defmodule Coeus.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Coeus.Repo,
      # Start the Telemetry supervisor
      CoeusWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Coeus.PubSub},
      # Start the Endpoint (http/https)
      CoeusWeb.Endpoint
      # Start a worker by calling: Coeus.Worker.start_link(arg)
      # {Coeus.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Coeus.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    CoeusWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
