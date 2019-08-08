class Backer 
  attr_reader :backed_projects, :name

  def initialize(name)
    @name = name 
    @backed_projects = []
  end 

  def back_project(project)   #takes the action to back a project / add a project 
      @backed_projects << project 
      project.backers << self
  end 

end #end of class Backer 