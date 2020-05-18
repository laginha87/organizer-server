module Mutations
  class CreateProjectMutation < Mutations::BaseMutation
    argument :project, Types::ProjectInputType, required: true
    field :project, Types::ProjectType, null: false

    def resolve(project:)
      attrs = project.to_h
      attrs.merge!(attrs.slice(:due_date, :defer_date).transform_values{ |date| date.beginning_of_day })
      project = Project.new(attrs)
      project.save
      {project: project}
    end
  end
end
