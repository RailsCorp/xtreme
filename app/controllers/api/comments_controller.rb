module Api
  class CommentsController < ApplicationController
    before_action :set_user
    before_action :set_task

    def create
      @comment = Comment.new(comment_params)
      if @comment.save
      else
        raise "error"
      end
    end

    private
    def set_user
      user = User.find(params[:user_id])
    end

    def set_task
      task = Task.find(params[:task_id])
    end

    def comment_params
      params.require(:comment).permit(
        :text
      ).merge(
        user_id: user.id
      ).merge(
        task_id: task.id
      )
    end
  end
end
