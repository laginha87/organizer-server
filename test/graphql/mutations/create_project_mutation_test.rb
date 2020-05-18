require "test_helper"

class Mutations::CreateProjectMutationTest < ActiveSupport::TestCase
  test "it creates a project" do
    query_string = read_gql("one")
    project_result = ServerSchema.execute(query_string, context: {}, variables: {input: {project: {
      name: "New Project",
      defaultPriority: "high",
      defaultDuration: "long",
      defaultDificulty: "easy",
      defaultIckyness: "frog",
      dueDate: "2019-01-14T10:23:00Z",
      deferDate: "2019-01-23T22:23:00Z"
    }}})

    res = project_result["data"]["createProject"]["project"]

    assert_equal("New Project", res["name"])
    assert_equal("high", res["defaultPriority"])
    assert_equal("long", res["defaultDuration"])
    assert_equal("easy", res["defaultDificulty"])
    assert_equal("frog", res["defaultIckyness"])
    assert_equal("2019-01-14T00:00:00Z", res["dueDate"])
    assert_equal("2019-01-23T00:00:00Z", res["deferDate"])
  end
end
