defmodule Vinipay do
  alias Vinipay.Users.Create, as: UserCreate

  alias Vinipay.Account.Deposit

  defdelegate create_user(params), to: UserCreate, as: :call

  defdelegate deposit(params), to: Deposit, as: :call
end
