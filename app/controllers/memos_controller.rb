class MemosController < ApplicationController
  before_action :set_task

  def index
    @memos =
      Memo.
        with_task.
        order("created_at DESC")

    @memos = MemoDecorator.decorate_collection(@memos)
  end

  def create
    @memo = Memo.new(memo_params)
    if @memo.save
      @memo = MemosDecorator.decorate(@memo)
    else
      raise "error"
    end
  end

  private

  def set_task
    @task = Task.find(params[:task_id])
  end

  def memo_params
    params.require(:memo).permit(
      :memo
    ).merge(
      task_id: @task.id
    )
  end
end
