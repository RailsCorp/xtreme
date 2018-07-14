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
