class ProjectTimeslot < ApplicationRecord
  belongs_to :project
  enum weekday: {
    monday: "monday",
    tuesday: "tuesday",
    wednesday: "wednesday",
    thursday: "thursday",
    friday: "friday",
    saturday: "saturday",
    sunday: "sunday"
  }
end
