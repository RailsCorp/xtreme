# == Schema Information
#
# Table name: coporation_tasks
#
#  id            :bigint(8)        not null, primary key
#  task_id       :bigint(8)        not null
#  coporation_id :bigint(8)        not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class CoporationTask < ApplicationRecord
  belongs_to :task
  belongs_to :coporation
  validates :task_id, presence: true
  validates :coporation_id, presence: true
end
