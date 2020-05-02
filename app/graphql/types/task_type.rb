module Types
  class TaskType < Types::BaseObject
    field :title, Types::StringType, null: true
    field :description, Types::TextType, null: true
    field :priority, Types::PriorityType, null: true
    field :duration, Types::DurationType, null: true
    field :dificulty, Types::DificultyType, null: true
    field :ickyness, Types::IckynessType, null: true
    field :created_at, Types::DateTimeType, null: true
    field :updated_at, Types::DateTimeType, null: true
    field :id, ID, null: true
  end
end
