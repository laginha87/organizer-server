module Types
  class ProjectInputType < Types::BaseInputObject
    argument :name, String, required: true
    argument :default_priority, Types::PriorityType, required: true
    argument :default_duration, Types::DurationType, required: true
    argument :default_dificulty, Types::DificultyType, required: true
    argument :default_ickyness, Types::IckynessType, required: true
    argument :due_date, Types::DateTimeType, required: false
    argument :defer_date, Types::DateTimeType, required: false
    argument :timeslots, [Types::ProjectTimeslotInputType], required: false
  end
end
