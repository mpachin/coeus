defmodule Coeus.Repo do
  use Ecto.Repo,
    otp_app: :coeus,
    adapter: Ecto.Adapters.Postgres
end
