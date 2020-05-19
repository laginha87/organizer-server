require "test_helper"

class Types::DateTypeTest < ActiveSupport::TestCase
  test "it coerces input" do
    res = Types::DateType.coerce_input("2018-02-20", {})
    assert_equal(2018, res.year)
    assert_equal(2, res.month)
    assert_equal(20, res.day)
  end

  test "it catches invalid dates" do
    assert_raises(GraphQL::CoercionError) do
      Types::DateType.coerce_input("Not a date", {})
    end
  end

  test "it coerces results" do
    date = DateTime.new(2020, 4, 12)
    res = Types::DateType.coerce_result(date, {})

    assert_equal("2020-04-12", res)
  end
end
