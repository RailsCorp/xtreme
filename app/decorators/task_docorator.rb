class TaskDecorator < ApplicationDecorator
  def include_images?
    if self.task_images.present?
      self.task_images
    end
  end
end
