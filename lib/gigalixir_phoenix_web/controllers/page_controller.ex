defmodule GigalixirPhoenixWeb.PageController do
  use GigalixirPhoenixWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
