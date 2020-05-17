module Queries
  class InboxQuery
    def self.call
      Task.where(project_id: nil)
    end
  end
end
