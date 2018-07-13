class Task < ApplicationRecord
  belongs_to :user
  belongs_to :group
  validates :task, presense: true
end
