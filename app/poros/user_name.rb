class UserName
  attr_reader :repo_name

  def initialize(data)
    @repo_name = data[:login]
  end
end
