class Types::DateType < Types::BaseScalar
  description "A date, transported as a string"

  def self.coerce_input(input_value, context)
    Date.strptime(input_value)
  rescue ArgumentError => e
    raise GraphQL::CoercionError, "#{input_value.inspect} is not a valid Date, #{e}"
  end

  def self.coerce_result(ruby_value, context)
    # It's transported as a string, so stringify it
    ruby_value.strftime("%Y-%m-%d")
  end
end
