defmodule MakeEnumerable.Mixfile do
  use Mix.Project

  def project do
    [
      app: :make_enumerable,
      version: "0.0.1",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      consolidate_protocols: Mix.env != :test,
      deps: []
    ]
  end

end
