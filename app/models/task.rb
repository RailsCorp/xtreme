class Task < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_many :comments, dependent: :destroy
  has_many :memos, dependent: :destroy
  validates :task, presense: true
end
