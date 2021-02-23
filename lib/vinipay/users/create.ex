defmodule Vinipay.Users.Create do
  alias Vinipay.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
