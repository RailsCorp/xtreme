# == Schema Information
#
# Table name: user_tasks
#
#  id         :bigint(8)        not null, primary key
#  content    :text(65535)      not null
#  image      :text(65535)
#  deadline   :datetime
#  complete   :boolean          default(FALSE), not null
#  user_id    :bigint(8)        not null
#  task_id    :bigint(8)        not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserTask < ApplicationRecord
  belongs_to :user
  belongs_to :task
  validates :user_id, presence: true
  validates :task_id, presence: true
  validates :content, presence: true
  validates :complete, presence: true
end
