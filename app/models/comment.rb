# == Schema Information
#
# Table name: comments
#
#  id         :bigint(8)        not null, primary key
#  text       :text(65535)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint(8)        not null
#  task_id    :bigint(8)        not null
#

class Comment < ApplicationRecord
  belongs_to :task
  belongs_to :user
  validates :text, presence: true
  validates :user_id, presence: true
  validates :task_id, presence: true
  scope :with_task, -> { includes(:task) }
  scope :with_user, -> { includes(:user) }
end
