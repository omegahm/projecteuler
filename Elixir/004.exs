defmodule Math do
  def cartesianProduct(first .. last, ys) when first == last do
    ys
  end

  def cartesianProduct(first .. last, ys) when first < last do
    prod = Enum.map(first .. last, &(&1 * first))
    cartesianProduct(first+1 .. last, prod ++ ys)
  end

  def largestPalindrome do
    cartesianProduct(100..999, [])
      |> Enum.filter(&palindrome?/1)
      |> Enum.max
  end

  def palindrome?(x) do
    String.reverse("#{x}") == "#{x}"
  end
end

IO.puts Math.largestPalindrome
