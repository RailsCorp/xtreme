class MemberQuery
  def initialize(current_user_id, group_id)
    @current_user_id = current_user_id
    @group_id = group_id
  end

  def execute
    members =
      Member.
        with_user.
        with_group.
        where(user_id: @current_user_id).
        where(group_id: @group_id).
        order("created_at DESC")

    MemberDecorator.decorate_collection(members)
  end
end
