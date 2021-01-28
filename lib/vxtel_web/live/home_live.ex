defmodule VxtelWeb.HomeLive do
  use VxtelWeb, :live_view

  alias Vxtel.Plans
  alias Vxtel.Simulate

  def mount(_params, _session, socket) do
    socket =
        assign(socket,
            simulate: %{"duration" => "0", "from" => "", "to" => "", "plan" => ""},
            plans: Plans.list_plans(),
            value: 0,
            plan_value: 0,
            loading: false,
            valid: true,
            open_result: false
        )
    {:ok, socket}
  end

  def handle_event("save", %{"simulate" => params}, socket) do
    send(self(), {:run_calculate, params})

    socket =
        assign(socket,
            plans: Plans.list_plans(),
            loading: true,
            open_result: true
        )

    {:noreply, socket}
  end

  def handle_info({:run_calculate, params}, socket) do
    duration_plan = Plans.calculate(params["duration"], params["plan"])

    socket =
        assign(socket,
            simulate: params,
            value: Simulate.calculate(params["from"], params["to"], String.to_integer(params["duration"])),
            plan_value: Simulate.calculate(params["from"], params["to"], duration_plan),
            loading: false
        )
    {:noreply, socket}
  end
end
