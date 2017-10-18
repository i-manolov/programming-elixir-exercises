defmodule MyList do

  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)

  def mapsum([], _), do: 0
  def mapsum([head | tail], func), do: func.(head) + mapsum(tail, func)

  def max(list), do: _max(list, 0)
  defp _max([], max_value), do: max_value
  defp _max([head | tail], max_value) when head < max_value, do: _max(tail, max_value)
  defp _max([head | tail], max_value) when head > max_value, do: _max(tail, head)

  def caesar([], _), do: []
  def caesar([head | tail], n) when head + n > ?z, do: [head + n - 26 | caesar(tail, n)]
  def caesar([head | tail], n), do: [head + n | caesar(tail, n)]

  def span(from, to) when from > to, do: []
  def span(from, to), do: [from | span(from + 1, to)]
end
