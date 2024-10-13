defmodule Fizzbuzz do
  def from_range(range),
    do:
      range
      |> Enum.map(&build("", &1))
      |> Enum.map(&IO.inspect(&1))

  defp build(string, value, _ \\ false)

  defp build("", value, true), do: "#{value}"

  defp build(string, _, true), do: "#{string}"

  defp build(string, value, false),
    do:
      string
      |> check_fizz(value)
      |> check_buzz(value)
      |> build(value, true)

  defp check_fizz(string, value) when rem(value, 3) == 0, do: string <> "fizz"
  defp check_fizz(string, _), do: string

  defp check_buzz(string, value) when rem(value, 5) == 0, do: string <> "buzz"
  defp check_buzz(string, _), do: string
end
