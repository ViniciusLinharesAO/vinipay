defmodule VinipayWeb.WelcomeController do
  use VinipayWeb, :controller

  alias Vinipay.Numbers

  def index(conn, %{"filename" => filename}) do
    filename
    |> Numbers.sum_from_file()
    |> handle_response(conn)
    text(conn, "Welcome to the Vinipay API")
  end

  defp handle_response({:ok, %{result: result}}, conn) do
    conn
    |> put_status(:ok)
    |> json(%{message: "Welcome to Vinipay API. Here is your number #{result}"})
  end
  defp handle_response({:error, reason}, conn) do
    conn
    |> put_status(:bad_request)
    |> json(reason)
  end
end
