module Types
  class ProjectType < Types::BaseObject
    field :name, String, null: true
    field :description, String, null: true
    field :default_priority, Types::PriorityType, null: true
    field :default_duration, Types::DurationType, null: true
    field :default_dificulty, Types::DificultyType, null: true
    field :default_ickyness, Types::IckynessType, null: true
    field :created_at, Types::DateTimeType, null: true
    field :updated_at, Types::DateTimeType, null: true
    field :tasks, [Types::TaskType], null: true
    field :id, ID, null: true
  end
end
