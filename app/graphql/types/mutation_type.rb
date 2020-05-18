module Types
  class MutationType < Types::BaseObject
    field :create_new_task, mutation: Mutations::CreateNewTaskMutation
    field :create_project, mutation: Mutations::CreateProjectMutation
    field :update_project, mutation: Mutations::UpdateProjectMutation
  end
end
