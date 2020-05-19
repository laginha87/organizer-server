module Types
  class ProjectType < Types::BaseObject
    field :name, String, null: false
    field :description, String, null: true
    field :default_priority, Types::PriorityType, null: false
    field :default_duration, Types::DurationType, null: false
    field :default_dificulty, Types::DificultyType, null: false
    field :default_ickyness, Types::IckynessType, null: false
    field :due_date, Types::DateType, null: true
    field :defer_date, Types::DateType, null: true
    field :timeslots, [Types::ProjectTimeslotType], null: true
    field :created_at, Types::DateTimeType, null: false
    field :updated_at, Types::DateTimeType, null: false
    field :tasks, [Types::TaskType], null: false
    field :id, ID, null: false
  end
end
