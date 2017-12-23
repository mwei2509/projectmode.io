defmodule PmApiWeb.InterestView do
  use PmApiWeb, :view
  alias PmApiWeb.InterestView

  def render("index.json", %{interests: interests}) do
    %{data: render_many(interests, InterestView, "interest.json")}
  end

  def render("show.json", %{interest: interest}) do
    %{data: render_one(interest, InterestView, "interest.json")}
  end

  def render("interest.json", %{interest: interest}) do
    %{id: interest.id,
      name: interest.name}
  end
end
