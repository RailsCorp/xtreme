class GroupsController < ApplicationController
  before_action :set_group, only: %i[update destroy show]
  before_action :authenticate_user!, except: %i[index create]

  def index
    @groups = GroupQuery.new(current_user.id).execute
    render :index, formats: :json
  end

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
      @group = GroupDecorator.decorate(@group)
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

  # 以下のvalidationはどうしようか考え中、のちに変更予定
  def authenticate_user!
    if @group.members.include?(current_user.id)
      true
    else
      return @group.errors.full_messages
    end
    true
  end
end
