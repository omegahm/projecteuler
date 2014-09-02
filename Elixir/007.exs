defmodule Math do
  def findPrime(stop) do
    findPrime(2, stop, %{ 1 => 2, 2 => 3 })
  end

  defp findPrime(stop, stop, map), do: map[stop-1]
  defp findPrime(   n, stop, map) do
    next = nextPrime(map[n], Map.values(map))
    findPrime(n+1, stop, Map.put(map, n+1, next))
  end

  defp nextPrime(n, primes) do
    Stream.iterate(n, &(&1 + 2))
      |> Stream.drop_while(&(notPrime(&1, primes)))
      |> Enum.fetch!(0)
  end

  defp notPrime(n, primes) do
    primes |> Enum.any?(&(rem(n, &1) == 0))
  end
end

IO.puts Math.findPrime(10001)
