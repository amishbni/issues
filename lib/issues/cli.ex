defmodule Issues.CLI do

  @default_count 10

  def run(argv) do
    parse_args(argv)
  end

  def parse_args(argv) do
    OptionParser.parse(argv, switches: [help: :boolean], aliases: [h: :help])
    |> elem(1)
    |> parse()
  end

  def parse([user, project, count]) do
    {user, project, String.to_integer(count)}
  end

  def parse([user, project]) do
    {user, project, @default_count}
  end

  def parse(_) do
   :help
  end

end
