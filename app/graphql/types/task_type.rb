module Types
  class TaskType < Types::BaseObject
    field :title, String, null: true
    field :description, String, null: true
    field :priority, Types::PriorityType, null: true
    field :duration, Types::DurationType, null: true
    field :dificulty, Types::DificultyType, null: true
    field :ickyness, Types::IckynessType, null: true
    field :created_at, Types::DateTimeType, null: true
    field :updated_at, Types::DateTimeType, null: true
    field :id, ID, null: true
  end
end
