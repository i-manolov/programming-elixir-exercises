defmodule MyList do
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)

  # ListAndRecursion-1
  def mapsum([], _func), do: 0
  def mapsum([head | tail], func), do: func.(head) + mapsum(tail, func)

  # ListAndRecursion-2
  def max(list), do: _max(list, 0)
  defp _max([], max_item), do: max_item
  defp _max([head | tail], max_item) when head <= max_item, do: _max(tail, max_item)
  defp _max([head | tail], max_item), do: _max(tail, head)

  # ListsAndRecursion-3
  def caesar([], _key), do: []
  def caesar([head | tail], key) when head + key <= ?z do
    [head + key | caesar(tail, key)]
  end
  def caesar([head | tail], key) do
    [head + key - 26 | caesar(tail, key)]
  end

end
