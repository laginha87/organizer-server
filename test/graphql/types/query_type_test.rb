require "test_helper"

class Types::QueryTypeTest < ActiveSupport::TestCase
  test "it queries the inbox" do
    query_string = read_gql("one")
    ServerSchema.execute(query_string, context: {}, variables: {})
  end

  test "it queries projects" do
    query_string = read_gql("two")
    ServerSchema.execute(query_string, context: {}, variables: {})
  end

  test "it queries " do
    query_string = read_gql("three")
    res = ServerSchema.execute(query_string, context: {}, variables: {})
    data = res["data"]["defaultTimeslots"]

    assert_equal("monday", data[0]["weekday"])
    assert_equal("09:00", data[0]["startTime"])
    assert_equal("18:00", data[0]["endTime"])
    assert_equal("tuesday", data[1]["weekday"])
    assert_equal("wednesday", data[2]["weekday"])
    assert_equal("thursday", data[3]["weekday"])
    assert_equal("friday", data[4]["weekday"])
    assert_equal("saturday", data[5]["weekday"])
    assert_equal("sunday", data[6]["weekday"])
  end
end
