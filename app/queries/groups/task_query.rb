module Groups
  class TaskQuery
    def initialize(page, params, current_user_id)
      @page = page
      @params = params
      @current_user_id = current_user_id
    end

    def execute
      # taskのソートを最終的にはClientで決められるようにしたい！
      group = Group.member.where(user_id: @current_user_id)
      group_tasks =
        GroupTask
        # whereでgroup_idのcurrent_userのgroupのtaskを持ってきたい
          .where(group_id: current_user.member.where())
          .order("id DESC")
          .page(@page)

      TaskDecorator.decorate_collection(group_tasks)
    end
  end
end