defmodule NiceTimeOps do
  @fields [:time, :quantity, :unit]
  defstruct @fields

  @moduledoc """
  Documentation for `NiceTimeOps`.
  """

  def from_datetime(time, quantity) do
    {:ok, %NiceTimeOps{time: time, quantity: quantity}}
  end

  def fetch(%__MODULE__{unit: nil} = struct, unit) do
    {:ok, struct!(struct, unit: unit)}
  end

  def fetch(%__MODULE__{time: %time_module{} = time, quantity: quantity, unit: unit}, sign) do
    time =
      case sign do
        sign when sign in [:ago, :from_now] -> time_module.utc_now()
        sign when sign in [:before, :ahead] -> time
      end

    sign =
      case sign do
        sign when sign in [:ago, :before] -> -1
        sign when sign in [:from_now, :ahead] -> 1
      end

    {:ok, Timex.shift(time, [{unit, sign * quantity}])}
  end
end
