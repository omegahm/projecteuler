defmodule Math do
  def fibEvenSum() do
    fib([2, 1])
      |> Enum.filter(&(rem(&1, 2) == 0))
      |> Enum.sum
  end

  def fib([head | tail]) when head > 4.0e6 do
    [head] ++ tail
  end

  def fib([h1, h2 | tail]) do
    fib([h1 + h2, h1, h2] ++ tail)
  end
end

IO.puts Math.fibEvenSum()
