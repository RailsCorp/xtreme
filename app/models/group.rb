class Group < ApplicationRecord
  has_many :members, dependent: :destroy
  has_many :users, through: :members
  has_many :tasks, dependent: :destroy

  validates :name, presence: true
end
