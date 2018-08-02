module Api
  class GroupTasksController < ApplicationController
    before_action :set_group
    def index; end

    def create; end

    def update; end

    def destroy; end

    private

    def set_group
      @group = Group.find(params[:group_id])
    end

    def set_group_task
      @group_task = GroupTask
    end

    def group_tasks_param
      params.require(:group_tasks).permit(
        :content,
        :image,
        :deadline,
        :complete,
        :boolean
      ).merge(
        group_id: @group_id,
        task_id: @task_id
      )
    end
  end
end
