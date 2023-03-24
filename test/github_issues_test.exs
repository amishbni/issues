defmodule GithubIssuesTest do
  use ExUnit.Case
  doctest Issues

  import Issues.GithubIssues, only: [issues_url: 3]

  @github_api_url Application.get_env(:issues, :github_api_url)

  test "issues_url function" do
    count_gte_100 = "#{@github_api_url}/repos/python/cpython/issues?per_page=100&direction=desc"
    assert issues_url("python", "cpython", 120) == count_gte_100

    count_lt_100 = "#{@github_api_url}/repos/python/cpython/issues?per_page=20&direction=desc"
    assert issues_url("python", "cpython", 20) == count_lt_100

    count_negative_gte_100 = "#{@github_api_url}/repos/python/cpython/issues?per_page=100&direction=asc"
    assert issues_url("python", "cpython", -120) == count_negative_gte_100

    count_negative_lt_100 = "#{@github_api_url}/repos/python/cpython/issues?per_page=20&direction=asc"
    assert issues_url("python", "cpython", -20) == count_negative_lt_100
  end
end
