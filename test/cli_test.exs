defmodule CliTest do
  use ExUnit.Case
  doctest Issues

  import Issues.CLI, only: [parse_args: 1]

  test ":help returned by option parsing with -h and --help options" do
    assert parse_args(["-h", "anything"]) == :help
    assert parse_args(["--help", "anything"]) == :help
  end

  test "three values given if present" do
    assert parse_args(["elixir-lang", "elixir", "5"]) == {"elixir-lang", "elixir", 5}
  end

  test "default count when two values are given" do
    assert parse_args(["elixir-lang", "elixir"]) == {"elixir-lang", "elixir", 10}
  end
end
