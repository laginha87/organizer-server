require "test_helper"

class Mutations::CreateProjectMutationTest < ActiveSupport::TestCase
  test "it creates a project" do
    query_string = read_gql("one")
    project_result = ServerSchema.execute(query_string, context: {}, variables: {input: {project: {
      name: "New Project",
      defaultPriority: "high",
      defaultDuration: "long",
      defaultDificulty: "easy",
      defaultIckyness: "frog"
    }}})
    res = project_result["data"]["createProject"]["project"]

    assert_equal("New Project", res["name"])
    assert_equal("high", res["defaultPriority"])
    assert_equal("long", res["defaultDuration"])
    assert_equal("easy", res["defaultDificulty"])
    assert_equal("frog", res["defaultIckyness"])
  end
end
