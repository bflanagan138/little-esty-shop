require 'httparty'
require 'json'

class Commit
  
  COMMIT_URL = "https://api.github.com/repos/bflanagan138/little-esty-shop/commits?&per_page=500"
  
  def response
    HTTParty.get(COMMIT_URL)
  end

  def parsed
    JSON.parse(response.body, symbolize_names: true)
  end

end
