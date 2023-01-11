require 'httparty'
require 'json'

class PullRequest 

  def response
    HTTParty.get("https://api.github.com/repos/bflanagan138/little-esty-shop/pulls?state=closed&per_page=500")
  end

  def parsed
    JSON.parse(response.body, symbolize_names: true)
  end

end
