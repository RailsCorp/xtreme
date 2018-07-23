class Task < ApplicationRecord
  enum task_type: [:user, :group]
  has_many :comments, dependent: :destroy
  has_many :memos, dependent: :destroy
  validates :task, presense: true
end
