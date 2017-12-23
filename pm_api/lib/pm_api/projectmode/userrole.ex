defmodule PmApi.Projectmode.Userrole do
  use Ecto.Schema
  import Ecto.Changeset
  alias PmApi.Projectmode.Userrole


  schema "userroles" do
    field :user_id, :id
    field :role_id, :id

    timestamps()
  end

  @doc false
  def changeset(%Userrole{} = userrole, attrs) do
    userrole
    |> cast(attrs, [])
    |> validate_required([])
  end
end
