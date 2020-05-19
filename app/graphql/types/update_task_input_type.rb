module Types
  class UpdateTaskInputType < Types::BaseInputObject
    argument :priority, Types::PriorityType, required: false
    argument :duration, Types::DurationType, required: false
    argument :dificulty, Types::DificultyType, required: false
    argument :ickyness, Types::IckynessType, required: false
    argument :projectId, ID, required: false
  end
end
