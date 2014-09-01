defmodule Math do
  def sumOfSquares do
    Enum.map(1..100, &(&1 * &1))
      |> Enum.sum
  end

  def squareOfSum do
    x = Enum.sum(1..100)
    x * x
  end
end

IO.puts abs(Math.sumOfSquares - Math.squareOfSum)
