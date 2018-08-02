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

    def set_group_task; end

    def group_tasks_param; end
  end
end
