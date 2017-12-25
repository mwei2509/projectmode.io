require IEx
defmodule PmApiWeb.Guardian.AuthErrorHandler do
  import Plug.Conn

  def auth_error(conn, {type, _reason}, _opts) do
    IEx.pry
    body = Poison.encode!(%{message: to_string(type)})
    send_resp(conn, 401, body)
  end
end
