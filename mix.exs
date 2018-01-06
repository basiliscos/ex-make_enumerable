defmodule MakeEnumerable.Mixfile do
  use Mix.Project

  def project do
    [
      app: :make_enumerable,
      version: "0.0.1",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      consolidate_protocols: Mix.env != :test,
      description: description(),
      package: package(),
      deps: deps(),
    ]
  end

  defp description do
    """
    Makes your structures enumerable!
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Ivan Baidakou"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/basiliscos/ex-make_enumerable"}
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.18", only: :dev}
    ]
  end

end
