require "test_helper"

class Types::QueryTypeTest < ActiveSupport::TestCase
  test "it queries the inbox" do
    query_string = read_gql("one")
    inbox_result = ServerSchema.execute(query_string, context: {}, variables: {})
  end

  test "it queries projects" do
    query_string = read_gql("two")
    inbox_result = ServerSchema.execute(query_string, context: {}, variables: {})
  end
end
