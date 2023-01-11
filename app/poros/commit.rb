require 'httparty'
require 'json'

class Commit

  def initialize
    @commits_count = 0
    @page_idx = 1
  end

  def response
    HTTParty.get("https://api.github.com/repos/bflanagan138/little-esty-shop/commits?&per_page=500&page=#{@page_idx}")
  end

  def parsed_count
    while @page_idx != 5 do
      @commits_count += JSON.parse(response.body, symbolize_names: true).count
      @page_idx += 1
    end
    @commits_count
  end
end
