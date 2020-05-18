module Mutations
  class UpdateProjectMutation < Mutations::BaseMutation
    argument :project, Types::ProjectInputType, required: true
    argument :id, ID, required: true
    field :project, Types::ProjectType, null: false

    def resolve(id:, project:)
      pr = Project.find(id)
      pr.assign_attributes(project.to_h)
      pr.save

      {
        project: pr
      }
    end
  end
end
