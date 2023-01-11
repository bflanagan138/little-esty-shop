class UserName
  attr_reader :repo_name

  def initialize(data)
    @repo_name = data[:login]
# require 'pry';binding.pry
  end
end

x = UserName.new(rob: "rob")
