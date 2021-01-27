defmodule ResultComponent do
  use VxtelWeb, :live_component

  def render(assigns) do
    ~L"""
    <div class="card">
      <h1>Valor para: <%= @from %> &#8594; <%= @to %> (<%= @plan %>)</h1>
      <div class="card-values">
        <div class="card-values__info">
          <h2>Sem plano</h2>
          <h3>R<%= Number.Currency.number_to_currency(@plan_value) %></h3>
        </div>

        <div class="card-values__info">
          <h2>Com plano</h2>
          <h3>R<%= Number.Currency.number_to_currency(@value) %></h3>
        </div>
      </div>

    </div>
    """
  end
end
