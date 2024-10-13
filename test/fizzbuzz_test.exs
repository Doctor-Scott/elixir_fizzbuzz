defmodule FizzbuzzTest do
  use ExUnit.Case
  doctest Fizzbuzz

  test "1 - 3" do
    assert Fizzbuzz.from_range(1..3) == ["1", "2", "fizz"]
  end

  test "1 - 15" do
    assert Fizzbuzz.from_range(1..15) == [
             "1",
             "2",
             "fizz",
             "4",
             "buzz",
             "fizz",
             "7",
             "8",
             "fizz",
             "buzz",
             "11",
             "fizz",
             "13",
             "14",
             "fizzbuzz"
           ]
  end
end
