defmodule MyEnum do
  def all?(list), do: all?(list, fn x -> !!x end)
  def all?([], _func), do: true
  def all?([head | tail], func) do
    if func.(head) do
      all?(tail, func)
    else
      false
    end
  end

  def each([], _), do: :ok
  def each([head | tail], func) do
    func.(head)
    each(tail, func)
  end

  def filter([], _func), do: []
  def filter([head | tail], func) do
    if func.(head) do
      [head | filter(tail, func)]
    else
      filter(tail, func)
    end
  end

  def split(list, 0), do: {[], list}
  def split(list, count) when length(list) < count, do: {list, []}
  def split([head | tail], count) do
    {left, right} = split(tail, count - 1)
    {[head | left], right}
  end

  def take(list, count) do
    {left, _right} = split(list, count)
  def take(_list, _count), do: []

end
