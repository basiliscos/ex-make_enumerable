# MakeEnumerable


[![Travis](https://img.shields.io/travis/basiliscos/ex-make_enumerable.svg)](https://travis-ci.org/basiliscos/ex-make_enumerable)
[![Hex.pm Version](http://img.shields.io/hexpm/v/make_enumerable.svg?style=flat)](https://hex.pm/packages/make_enumerable)
[![license](https://img.shields.io/github/license/basiliscos/ex-make_enumerable.svg)](https://github.com/basiliscos/ex-make_enumerable/blob/master/LICENSE)

Makes your structures enumerable!

The `MakeEnumerable` module injects `defimpl Enumerable` for your structs,
as structs are basically `maps` with special tag (member) `__struct__`.
The module hides the tag `__struct__` and delegates all other members
to map to be `Enumerable`.

```elixir
defmodule Bar do
  use MakeEnumerable
  defstruct foo: "a", baz: 10
end

iex> import Bar
iex> Enum.map(%Bar{}, fn({k, v}) -> {k, v} end)
[baz: 10, foo: "a"]
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `make_enumerable` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:make_enumerable, "~> 0.0.1"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/make_enumerable](https://hexdocs.pm/make_enumerable).

