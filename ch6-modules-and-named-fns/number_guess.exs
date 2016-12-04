# ModulesAndFunctions-6
defmodule Chop do
  def guess(actual, a..b) do
    initial_guess = div(a + b, 2)
    IO.puts "Is it #{initial_guess}"
    guess(actual, initial_guess, a..b)
  end

  def guess(actual, guess, _a.._b) when actual === guess do
    IO.puts "Yes, it's #{actual}"
  end

  def guess(actual,guess, a.._b) when actual < guess do
    guess(actual, a..guess - 1)
  end

  def guess(actual, guess, _a..b) when guess < actual do
    guess(actual, guess + 1..b)
  end
end
