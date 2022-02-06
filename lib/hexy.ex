defmodule Hexy do
  # Type alias for a RGB color code
  @type rgb() :: {0..255, 0..255, 0..255}
  # Type alias for a Hex color code
  @type hex() :: binary

  # Uses the custom type definitions in the specification
  @spec rgb_to_hex(rgb) :: hex | {:error, :invalid}
  #  Bodiless function clause
  def rgb_to_hex(rgb)

  def rgb_to_hex({r, g, b}) do
    [r, g, b]
    |> Enum.map(fn x -> Integer.to_string(x, 16) end)
    |> Enum.join()
  end

  def rgb_to_hex(_) do
    {:error, :invalid}
  end
end
