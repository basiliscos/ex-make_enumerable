defmodule Bar do
  use MakeEnumerable
  defstruct foo: "a", baz: 10
end

ExUnit.start()
