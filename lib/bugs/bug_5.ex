defmodule Cashy.Bug5 do
  @type currency() :: :sgd | :usd

  @spec convert(currency, currency, number) :: number
  def convert(:sgd, :usd, amount) do
    amount * 0.70
  end

  @spec amount({:value, number}) :: number
  def amount({:value, value}) do
    value
  end

  def run do
    convert(:sgd, :usd, amount({:value, :one_million_dollars}))
  end
end
