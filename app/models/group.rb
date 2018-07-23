class Group < ApplicationRecord
  has_many :members, dependent: :destroy
  has_many :users, through: :members
  has_many :group_tasks, dependent: :destroy
  has_many :tasks, through: :group_tasks

  validates :name, presence: true
end
