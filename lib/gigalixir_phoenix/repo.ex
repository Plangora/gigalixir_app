defmodule GigalixirPhoenix.Repo do
  use Ecto.Repo,
    otp_app: :gigalixir_phoenix,
    adapter: Ecto.Adapters.Postgres
end
