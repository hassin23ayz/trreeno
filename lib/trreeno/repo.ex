defmodule Trreeno.Repo do
  use Ecto.Repo,
    otp_app: :trreeno,
    adapter: Ecto.Adapters.Postgres
end
