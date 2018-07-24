# == Schema Information
#
# Table name: coporation_groups
#
#  id            :bigint(8)        not null, primary key
#  group_id      :bigint(8)        not null
#  coporation_id :bigint(8)        not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class CoporationGroup < ApplicationRecord
  belongs_to :group
  belongs_to :coporation
  validates :group_id, presence: true
  validates :coporation_id, presence: true
end
