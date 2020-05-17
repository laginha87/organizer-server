module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field(:inbox, [Types::TaskType], null: false, description: "The inbox")

    field :projects, [Types::ProjectType], null: false, description: "All the projects"

    def inbox
      Queries::InboxQuery.call
    end

    def projects
      Queries::ProjectsQuery.call
    end
  end
end
