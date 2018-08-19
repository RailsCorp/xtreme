module Tasks
  module TaskImages
    class CreateForm < Reform::Form
      include Reform::Form::ActiveModel

      model :task_image

      property :image

      validates :image, presence: true
    end
  end
end
