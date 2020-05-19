class Types::DayTimeType < Types::BaseScalar
  description "A time of day, transported as a string"

  DAYTIME_REGEX = /\A\d{2}:\d{2}\z/
  def self.coerce_input(input_value, context)
    raise GraphQL::CoercionError, "#{input_value.inspect} is not a valid DayTime" unless input_value.match?(DAYTIME_REGEX)
    hours, minutes = input_value.split(":")
    hours.to_i * 60 + minutes.to_i
  end

  def self.coerce_result(ruby_value, context)
    [ruby_value / 60, ruby_value % 60]
      .map { |e| e.to_s.rjust(2, "0") }
      .join(":")
  end
end
