class GroupQuery
  def initialize(current_user_id)
    @current_user_id = current_user_id
  end

  def execute
    groups =
      User.
        find(@current_user_id).
        groups.
          with_tasks.
          with_members.
          order("created_at DESC")

    GroupDecorator.decorate_collection(groups)
  end
end
