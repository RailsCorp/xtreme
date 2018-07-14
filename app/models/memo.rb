class Memo < ApplicationRecord
  belongs_to :task
  validates :memo, presence: true
  validates :task_id, presence: true
  scope :with_task, -> { includes(:task) }
end
