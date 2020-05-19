module Types
  class ProjectTimeslotInputType < Types::BaseInputObject
    argument :start_time, Types::DayTimeType, required: true
    argument :end_time, Types::DayTimeType, required: true
    argument :weekday, Types::WeekdayType, required: true
    argument :id, ID, required: false
  end
end
