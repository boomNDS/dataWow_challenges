defmodule BackEnd.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      BackEnd.Repo,
      # Start the Telemetry supervisor
      BackEndWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: BackEnd.PubSub},
      # Start the Endpoint (http/https)
      BackEndWeb.Endpoint
      # Start a worker by calling: BackEnd.Worker.start_link(arg)
      # {BackEnd.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: BackEnd.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    BackEndWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
