defmodule PmApi.Projectmode.Skills do
  use Ecto.Schema
  import Ecto.Changeset
  alias PmApi.Projectmode.Skills


  schema "skills" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%Skills{} = skills, attrs) do
    skills
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
