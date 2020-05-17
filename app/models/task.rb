class Task < ApplicationRecord
  enum Enums::PRIORITY[:priority]
  enum Enums::DURATION[:duration]
  enum Enums::DIFICULTY[:dificulty]
  enum Enums::ICKYNESS[:ickyness]

  belongs_to :project, optional: true
end
