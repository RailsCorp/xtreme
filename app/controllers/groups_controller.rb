class GroupsController < ApplicationController
  before_action :set_group

  def show
    @group_tasks =
      @group.
        group_tasks.
        includes(:user).
        order("created_at DESC").
        page(params[:page])

    @group_tasks = GroupTaskDecotrator.decorator(@group_tasks)
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end
end
