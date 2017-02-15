
# Created by Patrick Schneider on 05.12.2016.
# Copyright (c) 2016 MeetNow! GmbH

defmodule Snowflakex.Mixfile do
  use Mix.Project

  def project do
    [app: :snowflakex,
     version: "1.1.0",
     description: "A service for generating unique ID numbers at high scale with some simple guarantees",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package()]
  end

  def application do
    [applications: [:logger],
     mod: {Snowflakex, []}]
  end

  defp package do
    [maintainers: ["Patrick Schneider <patrick.schneider@meetnow.eu>"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/meetnow/snowflakex"}]
  end
end
