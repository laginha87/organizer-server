class Task < ApplicationRecord
    enum priority: [:low, :medium, :high]
    enum duration: [:short, :normal, :long]
    enum dificulty: [:easy, :medium, :hard]
    enum ickyness: [:frog, :tepid, :chicken]
end
