defmodule Math do
  # ModulesAndFunctions-4
  def sum(0), do: 0
  def sum(n), do: n + sum(n-1)


  # ModulesAndFunctions-5
  def gcd(x, 0), do: x
  def gcd(x,y), do: gcd(y, rem(x,y))
end
