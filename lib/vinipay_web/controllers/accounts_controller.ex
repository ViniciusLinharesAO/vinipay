defmodule VinipayWeb.AccountsController do
  use VinipayWeb, :controller

  alias Vinipay.Account

  action_fallback VinipayWeb.FallbackController

  def deposit(conn, params) do
    with {:ok, %Account{} = account} <- Vinipay.deposit(params) do
      conn
      |> put_status(:ok)
      |> render("update.json", account: account)
    end
  end
end
