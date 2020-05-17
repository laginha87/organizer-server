module Mutations
  class CreateProjectMutation < Mutations::BaseMutation
    argument :project, Types::CreateProjectInputType, required: true
    field :project, Types::ProjectType, null: false

    def resolve(project:)
      project = Project.new(project.to_h)
      project.save
      {project: project}
    end
  end
end
