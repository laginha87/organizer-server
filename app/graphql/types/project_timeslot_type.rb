module Types
  class ProjectTimeslotType < Types::BaseObject
    field :start_time, Types::DayTimeType, null: true
    field :end_time, Types::DayTimeType, null: true
    field :weekday, Types::WeekdayType, null: true
    field :created_at, Types::DateTimeType, null: true
    field :updated_at, Types::DateTimeType, null: true
    field :project, Types::ProjectType, null: true
    field :id, ID, null: true
  end
end
