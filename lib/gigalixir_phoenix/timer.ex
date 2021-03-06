defmodule GigalixirPhoenix.Timer do
    use GenServer
    alias GigalixirPhoenixWeb.Endpoint
    @greeting "Hello there!"

    def start_link(room), do: GenServer.start_link(__MODULE__, {room, 0, @greeting})

    def init(state) do
        send(self(), :counter)
        {:ok, state}
    end

    def handle_info(:counter, {room, timer, greeting}) do
        timer = timer + 1
        Process.send_after(self(), :counter, 1000)
        Endpoint.broadcast(room, "count", %{timer: timer, greeting: greeting})
        {:noreply, {room, timer, greeting}}
    end

    def code_change(_old_vsn, {room, timer, _greeting}, _extra) do
        {:ok, {room, timer, @greeting}}
    end
end