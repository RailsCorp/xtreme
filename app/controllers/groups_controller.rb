class GroupsController < ApplicationController
  before_action :set_group, only: %i[update destroy show]
  before_action :current_user_valid?

  def create
    @group = Group.new(group_params)
    if @group.save
      @group = GroupDecorator.decorate(@group)
      render :show, formats: :json
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def update
    if @group.update(group_params)
      @group = GroupDecorator.decorates(@group)
      render :show, formats: :json
    else
      render json: @group.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @group.destroy
    render json: { id: params[:id].to_i }
  end

  def show
    render :show, formats: :json
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

  def current_user_valid?
    if @group.member.include?(current_user)
      true
    else
      @group.errors.full_messages # ここは変更
    end
  end
end
