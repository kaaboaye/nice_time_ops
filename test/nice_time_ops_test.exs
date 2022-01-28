defmodule NiceTimeOpsTest do
  use ExUnit.Case
  doctest NiceTimeOps

  test "greets the world" do
    assert ~U[2022-01-29 07:58:49.232117Z][10][:hours][:before] == ~U[2022-01-28 21:58:49.232117Z]
  end
end
