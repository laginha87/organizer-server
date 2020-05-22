module Enums
  PRIORITY = lambda { |name| {name => {low: "low", medium: "medium", high: "high"}, :_prefix => true} }
  DURATION = lambda { |name| {name => {short: "short", normal: "normal", long: "long"}, :_prefix => true} }
  DIFICULTY = lambda { |name| {name => {easy: "easy", medium: "medium", hard: "hard"}, :_prefix => true} }
  ICKYNESS = lambda { |name| {name => {chicken: "chicken", tepid: "tepid", frog: "frog"}, :_prefix => true} }

  WEEKDAY = {
    monday: "monday",
    tuesday: "tuesday",
    wednesday: "wednesday",
    thursday: "thursday",
    friday: "friday",
    saturday: "saturday",
    sunday: "sunday"
  }
end
