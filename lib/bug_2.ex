defmodule Cashy.Bug2 do
  def convert(:sgd, :usd, amount) do
    {:ok, amount * 0.70}
  end

  def convert(_, _, _) do
    {:error, :invalid_amount}
  end

  def run(amount) do
    case convert(:sgd, :usd, amount) do
      {:ok, amount} ->
        IO.puts("converted amount is #{amount}")

      {:error, reason} ->
        IO.puts("whoops, #{String.to_atom(reason)}")
    end
  end
end
