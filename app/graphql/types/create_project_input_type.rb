module Types
    class CreateProjectInputType < Types::BaseInputObject
        argument :name, String, required: true
        argument :default_priority, Types::PriorityType, required: true
        argument :default_duration, Types::DurationType, required: true
        argument :default_dificulty, Types::DificultyType, required: true
        argument :default_ickyness, Types::IckynessType, required: true
    end
  end

