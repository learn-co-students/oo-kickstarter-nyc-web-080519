class Backer 
  attr_reader :backed_projects, :name

  def initialize(name)
    @name = name 
    @backed_projects = []
  end 

  def back_project(project)   #takes the action to back a project / add a project 
      @backed_projects << project #project is shoveled into the array @backed_projects 
      project.backers << self  #self/Backer instance is shoveled into project.backers (.backers calls on the array in project.rb)
  end 

end #end of class Backer 