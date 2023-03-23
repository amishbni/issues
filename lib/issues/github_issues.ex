defmodule Issues.GithubIssues do

  @user_agent [{"User-Agent", "Elixir amir@shabani.dev"}]

  def fetch(user, project) do
    issues_url(user, project)
    |> HTTPoison.get(@user_agent)
    |> handle_response
  end

  @github_url Application.get_env(:issues, :github_url)
  def issues_url(user, project) do
    "#{@github_url}/repos/#{user}/#{project}/issues"
  end

  def handle_response({_, %{status_code: status_code, body: body}}) do {
    status_code |> check_status_code(),
    body |> Poison.Parser.parse!()
  }
  end

  defp check_status_code(200), do: :ok
  defp check_status_code(_), do: :error
end
