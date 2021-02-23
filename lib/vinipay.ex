defmodule Vinipay do
  alias Vinipay.Users.Create, as: UserCreate

  defdelegate create_user(params), to: UserCreate, as: :call
end
