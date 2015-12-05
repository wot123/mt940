defmodule Mt940.Mixfile do
  use Mix.Project

  def project do
    [
      app: :mt940,
      version: "0.3.3",
      elixir: "~> 1.1",
      description: description,
      package: package,
      deps: deps,
      name: "MT940 Parser",
      source_url: "https://github.com/my-flow/mt940",
      dialyzer: [plt_add_deps: true],
      test_coverage: [tool: ExCoveralls]
    ]
  end


  def application do
    [applications: [:logger]]
  end


  defp deps do
    [
      {:decimal,     "~> 1.1.0" },
      {:exjsx,       "~> 3.2.0",  only: [:dev, :test]},
      {:excoveralls, "~> 0.4.3",  only: [:dev, :test]},
      {:earmark,     "~> 0.1.19", only: :dev},
      {:ex_doc,      "~> 0.11.1", only: :dev},
      {:inch_ex,     "~> 0.4.0",  only: :docs},
      {:timex,       "~> 0.19.5"}
    ]
  end


  defp description do
    """
    MT940 parser for Elixir.
    """
  end


  defp package do
    [
      files:       ["lib", "priv", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Florian J. Breunig"],
      licenses:    ["MIT"],
      links:       %{"GitHub" => "https://github.com/my-flow/mt940"}
    ]
  end
end
