defmodule Xno.Repo do
  use Ecto.Repo,
    otp_app: :xno,
    adapter: Ecto.Adapters.Postgres
end
