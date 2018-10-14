# == Schema Information
#
# Table name: tasks
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  task_type  :integer          default(0), not null
#

class Task < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :memos, dependent: :destroy
  belongs_to :group
  validates :title, presence: true
  validates :group_id, presence: true
  scope :with_group, -> { includes(:group) }
  scope :search_with_title, ->(title) { where(title: title) }
end
