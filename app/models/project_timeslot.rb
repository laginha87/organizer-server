class ProjectTimeslot < ApplicationRecord
  belongs_to :project
  enum weekday: Enums::WEEKDAY
end
