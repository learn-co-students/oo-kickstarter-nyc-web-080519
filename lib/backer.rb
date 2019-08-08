class Backer

  attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end # end Initialize method

  def back_project(project)
    @backed_projects << project
    project.backers << self
  end

end  ## Class Backer