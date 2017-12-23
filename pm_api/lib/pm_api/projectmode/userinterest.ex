defmodule PmApi.Projectmode.Userinterest do
  use Ecto.Schema
  import Ecto.Changeset
  alias PmApi.Projectmode.Userinterest


  schema "userinterests" do
    field :user_id, :id
    field :interest_id, :id

    timestamps()
  end

  @doc false
  def changeset(%Userinterest{} = userinterest, attrs) do
    userinterest
    |> cast(attrs, [])
    |> validate_required([])
  end
end
