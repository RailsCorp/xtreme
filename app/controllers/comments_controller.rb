class CommentsController < ApplicationController
  def index
    @comments =
      Comment
        .with_task
        .with_user
        .order("id DESC")

    @comments = CommentDecorator.decorate_collection(@comments)
  end
end
