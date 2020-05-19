require "test_helper"

class Types::DayTimeTypeTest < ActiveSupport::TestCase
  test "it coerces input" do
    assert_equal(1212, Types::DayTimeType.coerce_input("20:12", {}))
  end

  test "it catches invalid times" do
    assert_raises(GraphQL::CoercionError) do
      Types::DayTimeType.coerce_input("2012", {})
    end
  end

  test "it coerces results" do
    assert_equal("01:00", Types::DayTimeType.coerce_result(60, {}))
    assert_equal("10:00", Types::DayTimeType.coerce_result(600, {}))
    assert_equal("10:16", Types::DayTimeType.coerce_result(616, {}))
  end
end
