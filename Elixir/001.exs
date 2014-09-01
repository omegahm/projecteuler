import Enum
IO.puts 1..999 |> filter(&(rem(&1, 3) == 0 or rem(&1, 5) == 0)) |> sum
