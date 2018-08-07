class TaskQuery
  def initialize(group_id, page, current_user_id)
    @group_id = group_id
    @page = page
    @current_user_id = current_user_id
  end

  def execute
    # Taskのorderをユーザーが変えられるようにする
    group = Group.find(@group_id)
    tasks =
      group.
        tasks.
          order("created_at DESC").
          page(@page)

    TaskDecorator.decorte_collection(tasks)
  end
end
