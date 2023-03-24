defmodule Issues.CLI do

  @default_count 10

  def main(argv) do
    argv
    |> parse_args
    |> process
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

  def process(:help) do
    IO.puts """
    usage: issues <user> <project> [ count | #{@default_count} ]
    """
  end

  def process({user, project, count}) do
    Issues.GithubIssues.fetch(user, project, count)
    |> decode_response()
    |> sort_issues()
    |> last(count)
    |> Scribe.print(data: ["number", "created_at", "title"])
  end

  def decode_response({:ok, body}), do: body
  def decode_response({:error, error}) do
    IO.puts "Error fetching from Github: #{error["message"]}"
    System.halt(2)
  end

  def sort_issues(issues) do
    issues |>
    Enum.sort(
      fn (i, j) -> i["created_at"] >= j["created_at"] end
    )
  end

  def last(list, count) do
    list
    |> Enum.take(count)
    |> Enum.reverse
  end
end
