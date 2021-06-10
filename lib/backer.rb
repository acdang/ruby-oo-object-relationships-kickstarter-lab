class Backer
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        associations = ProjectBacker.all.select {|proj_back| proj_back.backer == self}
        associations.map {|proj_back| proj_back.project}
    end
end