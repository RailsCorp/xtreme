class TaskImage < ApplicationRecord
  belongs_to :task
  validates :task_id, presence: true
  validates :image, presence: true
  mount_uploader :image, ImageUploader
end
