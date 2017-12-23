defmodule PmApi.Projectmode.Role do
  use Ecto.Schema
  import Ecto.Changeset
  alias PmApi.Projectmode.Role


  schema "roles" do
    field :type, :string

    timestamps()
  end

  @doc false
  def changeset(%Role{} = role, attrs) do
    role
    |> cast(attrs, [:type])
    |> validate_required([:type])
  end
end
