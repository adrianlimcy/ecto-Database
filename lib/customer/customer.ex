defmodule Customer.Customer do
  use Ecto.Schema
  import Ecto.Changeset

  schema "customers" do
    field :first_name, :string
    field :last_name, :string
    field :email, :string
    field :age, :integer

    timestamps()
  end

  @doc false
  def changeset(customer, attrs) do
    customer
    |> cast(attrs, [:first_name, :last_name, :email, :age])
    |> validate_required([:first_name, :last_name, :email, :age])
    |> validate_length(:first_name, min: 2)
    |> validate_length(:first_name, max: 5)
    |> validate_format(:email, ~r/@/)
  end
end
