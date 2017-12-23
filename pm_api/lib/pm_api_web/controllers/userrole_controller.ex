defmodule PmApiWeb.UserroleController do
  use PmApiWeb, :controller

  alias PmApi.Projectmode
  alias PmApi.Projectmode.Userrole

  action_fallback PmApiWeb.FallbackController

  def index(conn, _params) do
    userroles = Projectmode.list_userroles()
    render(conn, "index.json", userroles: userroles)
  end

  def create(conn, %{"userrole" => userrole_params}) do
    with {:ok, %Userrole{} = userrole} <- Projectmode.create_userrole(userrole_params) do
      conn
      |> put_status(:created)
      # |> put_resp_header("location", userrole_path(conn, :show, userrole))
      |> render("show.json", userrole: userrole)
    end
  end

  def show(conn, %{"id" => id}) do
    userrole = Projectmode.get_userrole!(id)
    render(conn, "show.json", userrole: userrole)
  end

  def update(conn, %{"id" => id, "userrole" => userrole_params}) do
    userrole = Projectmode.get_userrole!(id)

    with {:ok, %Userrole{} = userrole} <- Projectmode.update_userrole(userrole, userrole_params) do
      render(conn, "show.json", userrole: userrole)
    end
  end

  def delete(conn, %{"id" => id}) do
    userrole = Projectmode.get_userrole!(id)
    with {:ok, %Userrole{}} <- Projectmode.delete_userrole(userrole) do
      send_resp(conn, :no_content, "")
    end
  end
end
