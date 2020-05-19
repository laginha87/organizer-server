module Mutations
  class UpdateTasksMutation < Mutations::BaseMutation
    argument :attributes, Types::UpdateTaskInputType, required: true
    argument :ids, [ID], required: true
    field :tasks, [Types::TaskType], null: false

    def resolve(attributes:, ids:)
      tasks = Task.where(id: ids)
      tasks.update_all(**attributes)
      {tasks: tasks}
    end
  end
end
