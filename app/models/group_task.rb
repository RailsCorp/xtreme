# == Schema Information
#
# Table name: group_tasks
#
#  id         :bigint(8)        not null, primary key
#  content    :text(65535)      not null
#  image      :text(65535)
#  deadline   :datetime
#  complete   :boolean          default(FALSE), not null
#  boolean    :boolean          default(FALSE), not null
#  group_id   :bigint(8)        not null
#  task_id    :bigint(8)        not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class GroupTask < ApplicationRecord
  belongs_to :group
  belongs_to :task
  validates :group_id, presence: true
  validates :task_id, presence: true
  validates :content, presence: true
  validates :complete, presence: true
end
