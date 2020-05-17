require "test_helper"

class Mutations::CreateTaskMutationTest < ActiveSupport::TestCase
  test "it creates a task" do
    query_string = read_gql("one")
    task_result = ServerSchema.execute(query_string, context: {}, variables: {input: {task: {
      title: "New Task",
      description: "",
      priority: "low",
      duration: "short",
      dificulty: "hard",
      ickyness: "chicken"
    }}})
    res = task_result["data"]["createNewTask"]["task"]

    assert_equal("New Task", res["title"])
    assert_equal("low", res["priority"])
    assert_equal("short", res["duration"])
    assert_equal("hard", res["dificulty"])
    assert_equal("chicken", res["ickyness"])
  end
end
