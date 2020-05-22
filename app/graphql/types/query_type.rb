module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field(:inbox, [Types::TaskType], null: false, description: "The inbox")

    field :projects, [Types::ProjectType], null: false, description: "All the projects"

    field :default_timeslots, [Types::ProjectTimeslotType], null: false, description: "Default timeslots for a project"

    def inbox
      Queries::InboxQuery.call
    end

    def projects
      Queries::ProjectsQuery.call
    end

    def default_timeslots
      Enums::WEEKDAY.values.map do |e|
        {
          weekday: e,
          start_time: 60 * 9,
          end_time: 60 * 18
        }
      end
    end
  end
end
