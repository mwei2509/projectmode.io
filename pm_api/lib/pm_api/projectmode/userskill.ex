defmodule PmApi.Projectmode.Userskill do
  use Ecto.Schema
  import Ecto.Changeset
  alias PmApi.Projectmode.Userskill


  schema "userskills" do
    field :user_id, :id
    field :skill_id, :id

    timestamps()
  end

  @doc false
  def changeset(%Userskill{} = userskill, attrs) do
    userskill
    |> cast(attrs, [])
    |> validate_required([])
  end
end
