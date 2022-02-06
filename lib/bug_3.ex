defmodule Cashy.Bug3 do
  def convert(:sgd, :usd, amount) when amount > 0 do
    {:ok, amount * 0.70}
  end

  def run(amount) do
    case convert(:sgd, :usd, amount) do
      amount when amount <= 0 ->
        IO.puts("whoops, should be more than zero")

      _ ->
        IO.puts("converted amount is #{amount}")
    end
  end
end
