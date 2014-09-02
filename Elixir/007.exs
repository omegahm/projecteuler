defmodule Math do
  def primes do
    Stream.unfold([2], fn primes ->
      next = nextPrime(primes)
      { next, [next | primes] }
    end)
  end

  defp nextPrime(primes) do
    start = hd(primes)
    Stream.iterate(start, &(&1+1))
      |> Stream.drop_while(&(notPrime(&1, primes)))
      |> Enum.fetch!(0)
  end

  defp notPrime(n, primes) do
    primes |> Enum.any?(&(rem(n, &1) == 0))
  end
end

IO.puts Math.primes |> Enum.take(10000) |> Enum.fetch!(-1)
