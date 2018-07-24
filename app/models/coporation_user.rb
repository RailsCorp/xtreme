# == Schema Information
#
# Table name: coporation_users
#
#  id            :bigint(8)        not null, primary key
#  user_id       :bigint(8)        not null
#  coporation_id :bigint(8)        not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class CoporationUser < ApplicationRecord
  belongs_to :user
  belongs_to :coporation
  validates :user_id, presence: true
  validates :coporation_id, presence: true
end
