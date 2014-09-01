defmodule Math do
  def largestPrimeFactor(n) do
    largestPrimeFactor(n, 2, 1)
  end

  def largestPrimeFactor(n, _, lastFactor) when n == 1 do
    lastFactor
  end

  def largestPrimeFactor(n, factor, _) when rem(n, factor) == 0 do
    largestPrimeFactor(div(n, factor), factor, factor)
  end

  def largestPrimeFactor(n, factor, lastFactor) do
    largestPrimeFactor(n, factor+1, lastFactor)
  end
end

IO.puts Math.largestPrimeFactor(600851475143)
