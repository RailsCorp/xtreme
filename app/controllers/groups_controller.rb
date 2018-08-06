class GroupsController < ApplicationController
  before_action :set_group, only: %i[show]
  before_action :current_user_valid?

  def show; end

  private

  def set_group
    @group = Group.find(params[:id])
  end

  def current_user_valid?
    if @group.member.include?(current_user)
      true
    else
      @group.errors.full_messages # ここは変更
    end
  end
end
