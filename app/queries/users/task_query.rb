module Users
  class TaskQuery
    def initialize(page, params, current_user_id)
      @page = page
      @params = params
      @current_user_id = current_user_id
    end

    def execute
      # taskのソートを最終的にはClientで決められるようにしたい！
      user_tasks =
        UserTask.
          where(user_id: @current_user_id).
          order("id DESC").
          page(@page)

      TaskDecorator.decorate_collection(user_tasks)
    end
  end
end
