# == Schema Information
#
# Table name: members
#
#  id         :bigint(8)        not null, primary key
#  name       :string(255)      not null
#  user_id    :bigint(8)        not null
#  group_id   :bigint(8)        not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Member < ApplicationRecord
  belongs_to :user
  belongs_to :group
  enum role: { regular: 0, leader: 1 }
  validates :role, presence: true
  validates :user_id, presence: true
  validates :group_id, presence: true
  scope :with_group, -> { includes(:group) }
  scope :with_user, -> { includes(:user) }
end
