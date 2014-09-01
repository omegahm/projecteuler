defmodule Math do
  def gcd(x, x) do
    x
  end

  def gcd(x, y) when x > y do
    gcd(x - y, y)
  end

  def gcd(x, y) when x < y do
    gcd(x, y - x)
  end

  def lcm(x, y) do
    round(x / gcd(x, y)) * y
  end
end

IO.puts Enum.reduce(2..19, &Math.lcm/2)
