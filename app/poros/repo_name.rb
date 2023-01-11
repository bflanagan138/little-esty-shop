require 'httparty'
require 'json'

class RepoName
  
  def github_response
    HTTParty.get("https://api.github.com/repos/bflanagan138/little-esty-shop")
   
  end
  
  def name_parsed
    response = JSON.parse(github_response.body, symbolize_names: true)
  end
 
end