module Queries
  class ProjectsQuery
    def self.call
      Project.all
    end
  end
end
