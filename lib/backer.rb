class Backer 
  attr_reader :backed_projects, :name

  def initialize(name)
    @name = name 
    @backed_projects = []
  end 

  def back_project(project)   #takes the action to back a project / add a project 
    if !project.backers.include?(self)
      @backed_projects << project 
      # project.add_backer(self)
      project.backers << self
    end 
  end 

end #end of class Backer 