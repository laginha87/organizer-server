module Types
  class TaskType < Types::BaseObject
    field :title, String, null: false
    field :description, String, null: false
    field :priority, Types::PriorityType, null: false
    field :duration, Types::DurationType, null: false
    field :dificulty, Types::DificultyType, null: false
    field :ickyness, Types::IckynessType, null: false
    field :created_at, Types::DateTimeType, null: false
    field :updated_at, Types::DateTimeType, null: false
    field :id, ID, null: false
  end
end
