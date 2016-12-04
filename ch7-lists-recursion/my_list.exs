defmodule MyList do
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)

  #ListAndRecursion-1
  def mapsum([], _func), do: 0
  def mapsum([head | tail], func), do: func.(head) + mapsum(tail, func)

  #ListAndRecursion-2
  def max([max_item]), do: max_item
  def max([head | tail]), do: 
end
