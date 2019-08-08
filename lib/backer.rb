class Backer
    attr_reader :backed_projects, :name

    def initialize(name)
        @name = name
        @backed_projects =[]
    end

    def back_project(project)
        @backed_projects << project
        #only add a backer if we're not already a backer
        if !project.backers.find { |backer| backer == self }
            project.add_backer(self)
        end
    end

end