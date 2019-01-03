defmodule XnoWeb.RoomChannel do
  use Phoenix.Channel

  @spec join(topic :: binary, payload :: map, socket :: Socket.t) ::
    {:ok, Socket.t} |
    {:ok, reply :: map, Socket.t} |
    {:error, reason :: map}
  def join("room:" <> _room_id, _params, socket) do
    {:ok, socket}
  end

  def handle_in("game_move", data, socket) do
    socket = assign(socket, :data, Map.get(socket.assigns, :data, []) ++ [data])
    broadcast!(socket, "game_move", socket.assigns)
    {:noreply, socket}
  end
end
