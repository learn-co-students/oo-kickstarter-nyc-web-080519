class Project

  attr_reader :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end  # Ends Initialize method

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end

end  # Ends Project Class