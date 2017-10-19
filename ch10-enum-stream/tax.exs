defmodule Tax do

  def orders_with_total(orders, tax_rates) do
    orders |> Enum.map(&(add_total_to(&1, tax_rates)))
  end

  def add_total_to(order = [id: _, ship_to: state, net_amount: net_amount], tax_rates) do
    IO.puts state
    tax_rate = Keyword.get(tax_rates, state, 0)
    tax = net_amount * tax_rate
    total_amount = tax + net_amount
    IO.puts(total_amount)
    Keyword.put(order, :total_amount, total_amount)
  end

end

tax_rates = [NC: 0.075, TX: 0.08]

orders = [
  [id: 123, ship_to: :NC, net_amount: 100.0],
  [id: 124, ship_to: :OK, net_amount: 35.5],
  [id: 125, ship_to: :TX, net_amount: 24.0],
  [id: 126, ship_to: :TX, net_amount: 44.8],
  [id: 127, ship_to: :NC, net_amount: 25.0],
  [id: 128, ship_to: :MA, net_amount: 10.0],
  [id: 129, ship_to: :CA, net_amount: 102.0],
  [id: 130, ship_to: :NC, net_amount: 50.0]
]

IO.inspect Tax.orders_with_total(orders, tax_rates)

