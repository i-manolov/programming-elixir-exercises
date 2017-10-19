defmodule Issues.CLI do

  def run(argv) do
    parse_args(argv)
  end

  @default_count 4

  def parse_args(argv) do
    opts = OptionParser.parse(argv,
                              switches: [help: :boolean],
                              aliases: [h: :help])

    IO.inspect opts

    case opts do
      {[help: true], _, _} -> :help
      {[user, project, count], _, _} -> {user, project, count}
      {[user, project], _, _} -> {user, project, @default_count}
      _ -> :help
    end
  end

end
