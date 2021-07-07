class Project
  attr_reader :backers, :title

  def initialize(title)
    @title = title
    @backers = []
  end 

  def add_backer(backer)
    # if !backer.backed_projects.include?(self)   # the backer isnt in the backers array
      @backers << backer
      # backer.back_project(self)
      backer.backed_projects << self
  end

end #end of class Project 