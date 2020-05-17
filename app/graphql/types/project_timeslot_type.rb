module Types
  class ProjectTimeslotType < Types::BaseObject
    field :start_time, Types::TimeType, null: true
    field :end_time, Types::TimeType, null: true
    field :weekday, Types::EnumType, null: true
    field :created_at, Types::DateTimeType, null: true
    field :updated_at, Types::DateTimeType, null: true
    field :project, Types::ProjectType, null: true
    field :id, ID, null: true
  end
end
