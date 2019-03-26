defmodule GigalixirPhoenixWeb.PageControllerTest do
  use GigalixirPhoenixWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Gigalixir"
  end
end
