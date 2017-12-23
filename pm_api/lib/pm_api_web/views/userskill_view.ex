defmodule PmApiWeb.UserskillView do
  use PmApiWeb, :view
  alias PmApiWeb.UserskillView

  def render("index.json", %{userskills: userskills}) do
    %{data: render_many(userskills, UserskillView, "userskill.json")}
  end

  def render("show.json", %{userskill: userskill}) do
    %{data: render_one(userskill, UserskillView, "userskill.json")}
  end

  def render("userskill.json", %{userskill: userskill}) do
    %{id: userskill.id}
  end
end
