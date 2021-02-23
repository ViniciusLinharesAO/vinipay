defmodule VinipayWeb.UsersController do
  use VinipayWeb, :controller

  alias Vinipay.User

  def create(conn, params) do
    params
    |> Vinipay.create_user()
    |> handle_response(conn)
    text(conn, "Welcome to the Vinipay API")
  end

  defp handle_response({:ok, %User{} = user}, conn) do
    conn
    |> put_status(:ok)
    |> render("create.json", user: user)
  end

  defp handle_response({:error, result}, conn) do
    conn
    |> put_status(:bad_request)
    |> put_view(VinipayWeb.ErrorView)
    |> render("400.json", result: result)
  end
end
