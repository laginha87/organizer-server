module Types
  class WeekdayType < Types::BaseEnum
    Enums::WEEKDAY.values.each do |e|
      value e, e.capitalize
    end
  end
end
