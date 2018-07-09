class GroupsController < ApplicationController
  before_action :set_group, only: [:update, :destroy]

  def index
  end

  def create
  end

  def update
    if @group.update(group_params)
    else
      raise "error"
    end
  end

  def destroy
    @group.destroy
  end

  private
  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(
      :name,
      :introduce,
      :image
    )
  end
end
