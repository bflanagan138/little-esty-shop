require 'httparty'
require 'json'
require 'pry'
# # require_relative './commit_search.rb'
require_relative './commit.rb'
# require_relative './pull_request_search.rb'
require_relative './pull_request.rb'
# require_relative './repo_name_search.rb'
# require_relative './repo_name.rb'
# require_relative './user_name_search.rb'
# require_relative './user_name.rb'

class Github
  attr_reader :pr_count,
              :tc_count

  def initialize
    @pr_count = PullRequest.new.parsed.count
    @tc_count = Commit.new.parsed_count
  end

end
