defmodule Issues.GithubIssues do

  require Logger

  @user_agent [{"User-Agent", "Elixir amir@shabani.dev"}]
  @github_api_url Application.get_env(:issues, :github_api_url)

  def fetch(user, project, count) do
    Logger.info("Fetching #{user}'s project #{project}")

    issues_url(user, project, count)
    |> HTTPoison.get(@user_agent)
    |> handle_response
  end

  def issues_url(user, project, count) do
    per_page = if count < 100, do: count, else: 100

    "#{@github_api_url}/repos/#{user}/#{project}/issues"
    |> URI.new!()
    |> URI.append_query(URI.encode_query(per_page: per_page))
    |> URI.to_string()
  end

  def handle_response({_, %{status_code: status_code, body: body}}) do
    Logger.info("Got response. status code: #{status_code}")

    parsed = body |> Poison.Parser.parse!()
    Logger.debug(fn -> inspect(parsed) end)

    {
      status_code |> check_status_code(),
      parsed
    }
  end

  defp check_status_code(200), do: :ok
  defp check_status_code(_), do: :error
end
