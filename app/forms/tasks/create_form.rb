module Tasks
  class CreateForm < Reform::Form
    include Reform::Form::ActiveModel

    model :task

    property :group_id
    property :title
    property :content
    property :on_deadline
    property :is_finished

    collection :task_images,
               form: TaskImages::CreateForm,
               populate_if_empty: TaskImage,
               default: [],
               virtual: true,
               save: false

    extend ActiveModel::ModelValidations
    copy_validations_from Task
  end
end
