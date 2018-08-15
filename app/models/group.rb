# == Schema Information
#
# Table name: groups
#
#  id         :bigint(8)        not null, primary key
#  name       :string(255)
#  introduce  :text(65535)
#  image      :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Group < ApplicationRecord
  has_many :members, dependent: :destroy
  has_many :users, through: :members
  has_many :tasks, dependent: :destroy

  scope :with_tasks, -> { includes(:tasks) }
  scope :with_members, -> { includes(:members) }

  validates :name, presence: true
end
