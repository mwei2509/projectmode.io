defmodule PmApi.Projectmode.Interest do
  use Ecto.Schema
  import Ecto.Changeset
  alias PmApi.Projectmode.Interest


  schema "interests" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%Interest{} = interest, attrs) do
    interest
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
