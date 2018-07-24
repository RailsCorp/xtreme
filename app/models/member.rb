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

  validates :name, presence: true
end
