defmodule PmApiWeb.UserView do
  use PmApiWeb, :view
  alias PmApiWeb.UserView

  def render("index.json", %{users: users}) do
    %{data: render_many(users, UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      password_hash: user.password_hash,
      email: user.email,
      firstname: user.firstname,
      lastname: user.lastname,
      tagline: user.tagline}
  end
end
