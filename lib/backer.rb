class Backer
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def proj_backers
        ProjectBacker.all.select {|proj_back| proj_back.backer == self}
    end

    def backed_projects
        self.proj_backers.map {|proj_back| proj_back.project}
    end
end