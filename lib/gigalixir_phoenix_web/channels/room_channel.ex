defmodule GigalixirPhoenixWeb.RoomChannel do
  use GigalixirPhoenixWeb, :channel

  def join(room, _params, socket) do
    GigalixirPhoenix.Timer.start_link(room)
    {:ok, assign(socket, :timer, 0)}
  end
end