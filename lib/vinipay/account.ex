defmodule Vinipay.Account do
  use Ecto.Schema
  import Ecto.Changeset

  alias Vinipay.User

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  @required_fields [:balance, :user_id]

  schema "users" do
      field :balance, :decimal
      belongs_to :user, User

      timestamps()
  end

  def changeset(struct \\ %__MODULE__{}, params) do
    struct
    |> cast(params, @required_fields)
    |> validate_required(@required_fields)
    |> check_constraint(:balance, name: :balance_must_be_positive_or_zero)
  end
end
