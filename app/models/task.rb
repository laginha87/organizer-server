class Task < ApplicationRecord
    enum priority: [:low, :medium, :high], _prefix: true
    enum duration: [:short, :normal, :long], _prefix: true
    enum dificulty: [:easy, :medium, :hard], _prefix: true
    enum ickyness: [:chicken, :tepid, :frog], _prefix: true

    belongs_to :project, optional: true
end
