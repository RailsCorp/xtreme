class CoporationTask < ApplicationRecord
  belongs_to :task
  belongs_to :coporation
  validates :task_id, presence: true
  validates :coporation_id, presence: true
end
