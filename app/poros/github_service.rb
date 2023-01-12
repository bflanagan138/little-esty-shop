require 'httparty'
require 'json'
require_relative './commit.rb'
require_relative './pull_request.rb'
require_relative './repo_name_search.rb'


class GithubService

  def self.github_api_pr
    PullRequest.new.parsed.count
  end

  def self.github_api_tc
    Commit.new.parsed_count
  end

  def self.github_user_names
    UserNameSearch.new.github_user_names
  end

end
