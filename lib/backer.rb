# require 'project.rb'
require 'pry'

class Backer
    attr_reader :name
    attr_accessor :backed_projects

    def initialize(name)
        @name = name
        @backed_projects = []
    end

    def back_project(project)
        project.backers << self
        @backed_projects << project
        # binding.pry
        # @backed_projects.zip @backers
    end

end

b1 = Backer.new("JIM")
b2 = Backer.new("STEVE")