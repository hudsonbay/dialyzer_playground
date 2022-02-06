defmodule Cashy.Bug4 do
  def convert(:sgd, :usd, amount) when is_float(amount) do
    {:ok, amount * 0.70}
  end

  def run do
    convert(:sgd, :usd, 10)
  end
end
