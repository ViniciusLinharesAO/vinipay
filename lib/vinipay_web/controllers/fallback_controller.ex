defmodule VinipayWeb.FallbackController do
  use VinipayWeb, :controller

  def call(conn, {:error, result}) do
    conn
    |> put_status(:bad_request)
    |> put_view(VinipayWeb.ErrorView)
    |> render("400.json", result: result)
  end
end
