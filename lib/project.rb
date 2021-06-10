class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        associations = ProjectBacker.all.select {|proj_back| proj_back.project == self}
        associations.map {|proj_back| proj_back.backer}
    end
end