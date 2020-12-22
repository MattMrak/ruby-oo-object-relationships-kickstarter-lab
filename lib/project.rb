class Project
    attr_accessor :title
    def initialize(title)
        @title = title
    end
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    def backers
        pb = ProjectBacker.all.select {|pb| pb.project == self}
        pb.map {|pb| pb.backer}
    end
end