defmodule PmApiWeb.SkillsView do
  use PmApiWeb, :view
  alias PmApiWeb.SkillsView

  def render("index.json", %{skills: skills}) do
    %{data: render_many(skills, SkillsView, "skills.json")}
  end

  def render("show.json", %{skills: skills}) do
    %{data: render_one(skills, SkillsView, "skills.json")}
  end

  def render("skills.json", %{skills: skills}) do
    %{id: skills.id,
      name: skills.name}
  end
end
