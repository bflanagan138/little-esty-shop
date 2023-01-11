class GithubService
  
  def content(url)
    response(url).headers
  end

  def response(url)
    HTTParty.get(
      url,
      include: true,
      headers: { "Accept" => "application/vnd.github+json" }
    )
  end

end
