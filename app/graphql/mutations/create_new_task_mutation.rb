module Mutations
    class CreateNewTaskMutation < Mutations::BaseMutation
        argument :task, Types::CreateTaskInputType, required: true
        field :task, Types::TaskType, null: false

        def resolve(task:)
            task = Task.new(task.to_h)
            task.save
            {task: task}
        end
    end
  end
