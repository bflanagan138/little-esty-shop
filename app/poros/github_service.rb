class GithubService
  
  def content(url)
    parse(url)
  end

  def parse(url)
    JSON.parse(response(url).body, symbolize_names: true)
  end

  def response(url)
    HTTParty.get(url)
  end
  
end
