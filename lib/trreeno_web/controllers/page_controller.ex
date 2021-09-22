defmodule TrreenoWeb.PageController do
  use TrreenoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
