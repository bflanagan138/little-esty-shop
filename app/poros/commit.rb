class Commit
  
  def initialize(data)
    @commits = data
  end

  def commit_count
    @commits[1][0][-15..-13].to_i
  end

end
