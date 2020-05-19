module Types
  class CreateTaskInputType < Types::BaseInputObject
    argument :title, String, required: true
    argument :description, String, required: false
    argument :priority, Types::PriorityType, required: true
    argument :duration, Types::DurationType, required: true
    argument :dificulty, Types::DificultyType, required: true
    argument :ickyness, Types::IckynessType, required: true
  end
end
