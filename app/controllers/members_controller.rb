class MembersController < ApplicationController
  before_acrion :set_member, only: %i[update destroy]
  before_acrion :set_group

  def index
    @members = MemberQuery.new(
      current_user.id,
      @group.id
    ).execute
    render :index, formats: :json
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      render :create, formats: :json
    else
      render json: @member.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    if @member.update(member_params)
      render :create, formats: :json
    else
      render json: @member.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    if @group.member.include?(@member)
      @member.destroy
      render :index, formats: :json
    else
      render json: @member.errors.full_messages, status: :unprocessable_entity
    end
  end

  private

  def set_member
    @member = Member.find(params[:id])
  end

  def set_group
    @group = Group.find(params[:group_id])
  end

  def member_params
    params.require(:member).permit(
      :role
    ).merge(
      group_id: @group.id,
      user_id: current_user.id
    )
  end
end
