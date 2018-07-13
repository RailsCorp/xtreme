module Api
  class GroupsController < ApplicationController
    before_action :set_group, only: %i[update , destroy]
    def create
      @group = Group.new(group_params)
      if @group.save
      else
      end
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
end