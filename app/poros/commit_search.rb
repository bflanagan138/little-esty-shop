require './poros/github_service.rb'

class CommitSearch

  COMMIT_URL = "https://api.github.com/repos/bflanagan138/little-esty-shop/commits?sha=main&per_page=1&page=1"

  def commit_information
    service.content(COMMIT_URL).select { |data| Film.new(data) if data.include?("link") }
  end

  def service
    GithubService.new
  end

end
