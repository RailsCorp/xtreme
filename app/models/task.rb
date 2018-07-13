class Task < ApplicationRecord
  validates :task, presense: true
end
