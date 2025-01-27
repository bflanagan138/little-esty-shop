require 'httparty'
require 'json'
require 'pry'
require_relative './commit.rb'
require_relative './pull_request.rb'
# require_relative './repo_name_search.rb'
# require_relative './repo_name.rb'
# require_relative './user_name_search.rb'
# require_relative './user_name.rb'

class GithubService

  def self.github_api_pr
    PullRequest.new.parsed.count
  end

  def self.github_api_tc
    Commit.new.parsed_count
  end

end
