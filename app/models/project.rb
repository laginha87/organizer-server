class Project < ApplicationRecord
  enum Enums::PRIORITY[:default_priority]
  enum Enums::DURATION[:default_duration]
  enum Enums::DIFICULTY[:default_dificulty]
  enum Enums::ICKYNESS[:default_ickyness]

  has_many :tasks
end
