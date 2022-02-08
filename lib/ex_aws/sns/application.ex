defmodule ExAws.SNS.Application do
  use Application
  @doc false
  def start(_type, _args) do

    children = [
      {ExAws.SNS.PublicKeyCache, name: ExAws.SNS.PublicKeyCache}
    ]

    opts = [strategy: :one_for_one, name: ExAws.SNS.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
