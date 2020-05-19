require "test_helper"

class Mutations::UpdateTasksMutationTest < ActiveSupport::TestCase
  test "it creates a task" do
    query_string = read_gql("one")
    task_result = ServerSchema.execute(query_string, context: {}, variables: {input: {
      ids: [
        tasks("one").id,
        tasks("two").id
      ],
      attributes: {
        priority: "high",
        duration: "long",
        dificulty: "easy",
        ickyness: "frog"
      }
    }})

    res = task_result["data"]["updateTasks"]["tasks"]
    assert_equal(["frog", "frog"], res.pluck("ickyness"))
  end
end
