class Comment < ApplicationRecord
  belongs_to :task
  belongs_to :user
  validates :text, presence: true
  validates :user_id, presence: true
  validates :task_id, presence: true
  scope :with_task, -> { includes(:task) }
  scope :with_user, -> { includes(:user) }
end
