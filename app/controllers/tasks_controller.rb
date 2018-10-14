class TasksController < ApplicationController
  before_action :set_group, only: %i[index create update destroy show]
  before_action :set_task, only: %i[update destroy show]
  before_action :current_user_valid?
  def index
    @tasks = TaskQuery.new(
      @group.id,
      params[:page],
      current_user.id
    ).execute

    render :index, formats: :json
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      @task = TaskDecorattor.decorate(@task)
      render :show, status: :created
    else
      render :index
    end
  end

  def update
    if @task.update(task_params)
      @task = TaskDecorattor.decorate(@task)
      render :show, formats: :json
    else
      render json: @task.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @task.destroy
    render json: { id: params[:id].to_i }
  end

  def show
    render :show, formats: :json
  end

  private

  def set_group
    @group = Group.find(params[:group_id])
  end

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(
      :task_type,
      :title,
      :content,
      :on_deadline,
      :is_finished
    ).merge(
      group_id: @group.id
    )
  end

  def current_user_valid?
    if @group.member.include?(current_user)
      true
    else
      @group.errors.full_messages # ここは変更
    end
  end
end
