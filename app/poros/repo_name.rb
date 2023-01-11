require 'httparty'
require 'json'
require 'pry'

class RepoName
  
  def github
    HTTParty.get("https://api.github.com/repos/bflanagan138/little-esty-shop")
  end
  
  def name_parsed
    JSON.parse(github.body, symbolize_names: true)[:name]
  end
end
