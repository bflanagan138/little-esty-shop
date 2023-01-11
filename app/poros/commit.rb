require 'httparty'
require 'json'

class Commit

  def initialize
    @commits_count = 0
    @page_idx = 1
  end

  def response
    HTTParty.get("https://api.github.com/repos/bGray88/m2_relational_rails_dir-mov/commits?&per_page=500&page=#{@page_idx}")
  end

  def parsed_count
    while JSON.parse(response.body, symbolize_names: true).count != 0 do
      @commits_count += JSON.parse(response.body, symbolize_names: true).count
      @page_idx += 1
    end
    @commits_count
  end

end
