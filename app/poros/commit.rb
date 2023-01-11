class Commit
  
  attr_reader :count

  def initialize(data)
    @commits << data[:commit]
  end

  def count
    @commits.length
  end

end
