# require 'backer.rb'
require 'pry'

class Project
    attr_reader :title
    attr_accessor :backers
    def initialize(title)
        @title = title
        @backers = []
    end
    
    def add_backer(backer)
        backer.backed_projects << self  
        @backers << backer
        # binding.pry
        # @backers.zip @backed_projects
    end
end

p1 = Project.new("Project 1")
p2 = Project.new("Project 2")
