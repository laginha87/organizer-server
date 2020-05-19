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
      dueDate: "2019-01-14",
      deferDate: "2019-01-23"
    }}})

    res = project_result["data"]["createProject"]["project"]

    assert_equal("New Project", res["name"])
    assert_equal("high", res["defaultPriority"])
    assert_equal("long", res["defaultDuration"])
    assert_equal("easy", res["defaultDificulty"])
    assert_equal("frog", res["defaultIckyness"])
    assert_equal("2019-01-14", res["dueDate"])
    assert_equal("2019-01-23", res["deferDate"])
  end

  test "it creates a project with project_timeslots" do
    query_string = read_gql("two")
    project_result = ServerSchema.execute(query_string, context: {}, variables: {input: {project: {
      name: "New Project",
      defaultPriority: "high",
      defaultDuration: "long",
      defaultDificulty: "easy",
      defaultIckyness: "frog",
      timeslots: [{
        startTime: "10:00",
        endTime: "20:00",
        weekday: "monday"
      }]
    }}})

    timeslot = project_result["data"]["createProject"]["project"]["timeslots"][0]

    assert_equal("monday", timeslot["weekday"])
    assert_equal("20:00", timeslot["endTime"])
    assert_equal("10:00", timeslot["startTime"])
  end
end
