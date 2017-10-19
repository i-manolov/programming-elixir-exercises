defmodule Prime do
  def span(from, to) when from > to, do: []
  def span(from, to), do: [from | span(from + 1, to)]

  def up_to(limit) do
    span(2, limit) |> Enum.filter(fn x -> is_prime(x) end)
  end

  def is_prime(2), do: true
  def is_prime(n) do
    list = span(2, n - 1)
    Enum.all?(list, fn x -> rem(n, x) !== 0 end)
  end

end

IO.inspect Prime.up_to(20)
