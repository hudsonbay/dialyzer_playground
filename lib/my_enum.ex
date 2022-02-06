defmodule MyEnum do
  @doc """
  From the type specification, we’re declaring the following:
  - f (the first argument to `map/2`) is a single-arity function that takes a term and
  returns another term.
  - list_1 (the second argument to `map/2`) and `list_2` (the return result of
  `map/2`) are lists of terms.
  """
  @spec map(f, list_1) :: list_2
        when f: (a -> b),
             list_1: [a],
             list_2: [b],
             a: term,
             b: term
  def map(f, [h | t]), do: [f.(h) | map(f, t)]
  def map(f, []) when is_function(f, 1), do: []
end
