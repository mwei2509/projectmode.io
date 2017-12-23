defmodule PmApiWeb.UserinterestController do
  use PmApiWeb, :controller

  alias PmApi.Projectmode
  alias PmApi.Projectmode.Userinterest

  action_fallback PmApiWeb.FallbackController

  def index(conn, _params) do
    userinterests = Projectmode.list_userinterests()
    render(conn, "index.json", userinterests: userinterests)
  end

  def create(conn, %{"userinterest" => userinterest_params}) do
    with {:ok, %Userinterest{} = userinterest} <- Projectmode.create_userinterest(userinterest_params) do
      conn
      |> put_status(:created)
      # |> put_resp_header("location", userinterest_path(conn, :show, userinterest))
      |> render("show.json", userinterest: userinterest)
    end
  end

  def show(conn, %{"id" => id}) do
    userinterest = Projectmode.get_userinterest!(id)
    render(conn, "show.json", userinterest: userinterest)
  end

  def update(conn, %{"id" => id, "userinterest" => userinterest_params}) do
    userinterest = Projectmode.get_userinterest!(id)

    with {:ok, %Userinterest{} = userinterest} <- Projectmode.update_userinterest(userinterest, userinterest_params) do
      render(conn, "show.json", userinterest: userinterest)
    end
  end

  def delete(conn, %{"id" => id}) do
    userinterest = Projectmode.get_userinterest!(id)
    with {:ok, %Userinterest{}} <- Projectmode.delete_userinterest(userinterest) do
      send_resp(conn, :no_content, "")
    end
  end
end
