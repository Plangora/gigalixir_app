defmodule GigalixirPhoenixWeb.RoomChannel do
  use GigalixirPhoenixWeb, :channel

  def join(room, _params, socket) do
    {:ok, _pid} = DynamicSupervisor.start_child(GigalixirPhoenix.TimerSupervisor, {GigalixirPhoenix.Timer, room})
    {:ok, assign(socket, :timer, 0)}
  end
end
