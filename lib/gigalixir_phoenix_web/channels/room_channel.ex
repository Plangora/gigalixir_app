defmodule GigalixirPhoenixWeb.RoomChannel do
  use GigalixirPhoenixWeb, :channel
  @greeting "Hello"

  def join(_, _params, socket) do
    send(self(), :counter)
    {:ok, assign(socket, :timer, 0)}
  end

  def handle_info(:counter, %{assigns: %{timer: timer}} = socket) do
    timer = timer + 1
    Process.send_after(self(), :counter, 1000)
    push(socket, "count", %{timer: timer, greeting: @greeting})
    {:noreply, assign(socket, :timer, timer)}
  end
end