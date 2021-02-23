defmodule Vinipay.Repo do
  use Ecto.Repo,
    otp_app: :vinipay,
    adapter: Ecto.Adapters.Postgres
end
