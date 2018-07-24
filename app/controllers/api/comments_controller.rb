module Api
  class CommentsController < ApplicationController
    before_action :set_user
    before_action :set_task

    def index
      @comments =
        Comment
          .with_task
          .with_user
          .order("id DESC")

      @comments = CommentDecorator.decorate_collection(@comments)
    end

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
        user_id: user.id,
        task_id: task.id
      )
    end
  end
end
