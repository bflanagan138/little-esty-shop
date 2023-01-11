require './poros/github_service.rb'

class CommitSearch

  COMMIT_URL = "https://api.github.com/repos/bflanagan138/little-esty-shop/commits"

  def commit_information
    service.content(COMMIT_URL).map { |data| Commit.new(data) }
  end

  def service
    GithubService.new
  end
  
end
