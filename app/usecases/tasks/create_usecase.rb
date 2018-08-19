module Tasks
  class CreateUsecase
    attr_reader :form, :params

    def initialize(params)
      Rails.logger.debug "ここ2 params : #{params}"
      @params = params
      @form = Tasks::CreateForm.new(Task.new)
    end

    def execute
      Rails.logger.debug "ここ3"
      return @form unless @form.validate(@params)
      Rails.logger.debug "ここ4"
      ActiveRecord::Base.transaction do
        Rails.logger.debug "ここ5"
        @form.sync
        result = Task.create_all(@params)
        task = result[:task]
        task_images = result[:task_images]
        task[:task_images] = task_images
      end
      { form: @form, task: task }
    end
  end
end
