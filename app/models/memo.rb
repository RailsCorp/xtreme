# == Schema Information
#
# Table name: memos
#
#  id         :bigint(8)        not null, primary key
#  memo       :text(65535)      not null
#  task_id    :bigint(8)        not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Memo < ApplicationRecord
  belongs_to :task
  validates :memo, presence: true
  validates :task_id, presence: true
  scope :with_task, -> { includes(:task) }
end
