module Types
  class MutationType < Types::BaseObject
    field :create_new_task, mutation: Mutations::CreateNewTaskMutation
  end
end
