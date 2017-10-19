defmodule CLITest do
  use ExUnit.Case
  doctest Issues

  import Issues.CLI, only: [parse_args: 1]
  test ":help returned by option parsing with -h and --help options" do
    assert parse_args(["-h"]) === :help
    assert parse_args(["--help"]) === :help
  end

  test "three values returned if 3 are given" do
    assert parse_args(["--user", "testUser", "--project", "project", "--count", 99]) === {[user: "testUser"], [project: "project"], [count: 99]}
  end

  # test "count is defaulted if two values are given" do
  # end
end
