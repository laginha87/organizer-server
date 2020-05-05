module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :inbox, [Types::TaskType], null: false,
                                     description: "The inbox"

    def inbox
      Task.all
    end
  end
end
