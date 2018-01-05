defmodule MakeEnumerableTest do
  use ExUnit.Case

  doctest MakeEnumerable

  defmodule StructSample do
    use MakeEnumerable

    defstruct name: "John", age: 27
  end


  test "Enumerable struct test" do
    instance = %StructSample{ :name => "N", :age => 22 }
    assert Enum.map(instance, fn({k, _v}) -> k end) == [:age, :name];
  end
end
