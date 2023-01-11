require 'httparty'
require 'json'

class Commit

  def initialize
    @commits_count = {
      brady: 0,
      brandon: 0,
      bryan: 0,
      sergio: 0
    }
    @page_idx = 1
  end

  def response
    HTTParty.get("https://api.github.com/repos/bflanagan138/little-esty-shop/commits?&per_page=500&page=#{@page_idx}")
  end

  def parsed_count
    while @page_idx != 5 do
      commits = JSON.parse(response.body, symbolize_names: true)
      commits.each do |commit|
        @commits_count[:brady]   += 1 if commit[:commit][:author][:name].include?("Brady")
        @commits_count[:brandon] += 1 if commit[:commit][:author][:name].include?("Brandon")
        @commits_count[:bryan]   += 1 if commit[:commit][:author][:name].include?("Bryan")
        @commits_count[:sergio]  += 1 if commit[:commit][:author][:name].include?("Sergio")
      end
      @page_idx += 1
    end
    @commits_count
  end
end
