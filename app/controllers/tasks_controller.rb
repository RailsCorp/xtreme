class TasksController < ApplicationController
  before_action :set_task, only: %i[update , destroy]
  def index
    @tasks = Task.all.order("id DESC")
  end

  def create
    @task = Task.new(task_params)
  end

  def update
    if @task.update(task_params)
      # redirect_to :show
    else
      # エラー投げる
    end
  end

  def destroy
    @task.destroy
    # redirect_to :show
  end

  private
  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(
      :task,
      :image,
      :deadline
    )
  end
end
