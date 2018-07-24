# == Schema Information
#
# Table name: coporations
#
#  id          :bigint(8)        not null, primary key
#  name        :string(255)      not null
#  image       :text(65535)
#  introduce   :text(65535)
#  owner       :string(255)      not null
#  address     :text(65535)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  established :datetime         not null
#

class Coporation < ApplicationRecord
  has_many :coporation_users, dependent: :destroy
  has_many :users, through: :coporation_users
  has_many :coporation_groups, dependent: :destroy
  has_many :users, through: :coporation_groups
  has_many :coporation_tasks, dependent: :destroy
  has_many :users, through: :coporation_tasks
  validates :name, presence: true
  validates :owner, presence: true
  validates :address, presence: true
end
