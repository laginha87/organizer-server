require 'test_helper'

class Queries::InboxQueryTest < ActiveSupport::TestCase
  test "it returns tasks" do
    res = Queries::InboxQuery.call.pluck(:id)

    assert_not_includes(res, tasks(:with_project_one).id, "Not include tasks with projects")
    assert_not_includes(res, tasks(:with_project_two).id, "Not include tasks with projects")
    assert_includes(res, tasks(:one).id)
  end
end
