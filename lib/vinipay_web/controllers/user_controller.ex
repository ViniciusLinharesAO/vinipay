defmodule VinipayWeb.UsersController do
  use VinipayWeb, :controller

  alias Vinipay.User

  action_fallback VinipayWeb.FallbackController

  def create(conn, params) do
    with {:ok, %User{} = user} <- Vinipay.create_user(params) do
      conn
      |> put_status(:ok)
      |> render("create.json", user: user)
    end
  end
end
