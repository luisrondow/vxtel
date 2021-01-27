defmodule VxtelWeb.HomeLive do
  use VxtelWeb, :live_view

  def mount(_params, _session, socket) do
    plans_map = [
        %{
          :key => "FaleMais 30",
          :value => 30
        },
        %{
          :key => "FaleMais 60",
          :value => 60
        },
        %{
          :key => "FaleMais 120",
          :value => 120
        }
    ]

    socket = assign(socket, plans_map: plans_map)
    {:ok, socket}
  end
end
