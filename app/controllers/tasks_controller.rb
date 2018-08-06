class TasksController < ApplicationController
  before_action :set_group, only: %i[index]
  before_action :current_user_valid?
  def index
    @tasks = TaskQuery.new(
      @group.id,
      params[:page],
      current_user.id
    ).execute
  end

  private

  def set_group
    @group = Group.find(params[:group_id])
  end

  def current_user_valid?
    if @group.member.include?(current_user)
      true
    else
      @group.errors.full_messages # ここは変更
    end
  end
end
