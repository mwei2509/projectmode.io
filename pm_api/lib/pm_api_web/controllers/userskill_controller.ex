defmodule PmApiWeb.UserskillController do
  use PmApiWeb, :controller

  alias PmApi.Projectmode
  alias PmApi.Projectmode.Userskill

  action_fallback PmApiWeb.FallbackController

  def index(conn, _params) do
    userskills = Projectmode.list_userskills()
    render(conn, "index.json", userskills: userskills)
  end

  def create(conn, %{"userskill" => userskill_params}) do
    with {:ok, %Userskill{} = userskill} <- Projectmode.create_userskill(userskill_params) do
      conn
      |> put_status(:created)
      # |> put_resp_header("location", userskill_path(conn, :show, userskill))
      |> render("show.json", userskill: userskill)
    end
  end

  def show(conn, %{"id" => id}) do
    userskill = Projectmode.get_userskill!(id)
    render(conn, "show.json", userskill: userskill)
  end

  def update(conn, %{"id" => id, "userskill" => userskill_params}) do
    userskill = Projectmode.get_userskill!(id)

    with {:ok, %Userskill{} = userskill} <- Projectmode.update_userskill(userskill, userskill_params) do
      render(conn, "show.json", userskill: userskill)
    end
  end

  def delete(conn, %{"id" => id}) do
    userskill = Projectmode.get_userskill!(id)
    with {:ok, %Userskill{}} <- Projectmode.delete_userskill(userskill) do
      send_resp(conn, :no_content, "")
    end
  end
end
