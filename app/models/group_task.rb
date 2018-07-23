class GroupTask < ApplicationRecord
  belongs_to :group
  belongs_to :task
  validates :group_id, presence: true
  validates :task_id, presence: true
  validates :content, presence: true
  validates :complete, presence: true
end
