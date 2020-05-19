module Mutations
  class CreateProjectMutation < Mutations::BaseMutation
    argument :project, Types::ProjectInputType, required: true
    field :project, Types::ProjectType, null: false

    def resolve(project:)
      attrs = project.to_h
      attrs[:timeslots] = project.timeslots.map { |e| ProjectTimeslot.new(e.to_h) } if project.timeslots
      project = Project.new(attrs)
      project.save
      {project: project}
    end
  end
end
