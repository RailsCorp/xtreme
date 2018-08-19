class TasksController < ApplicationController
  before_action :set_group, only: %i[index create update destroy show]
  before_action :set_task, only: %i[update destroy show]
  before_action :authenticate_user!
  def index
    @tasks = TaskQuery.new(
      @group.id,
      params[:page],
      current_user.id
    ).execute

    render :index, formats: :json
  end

  def create
    logger.debug "ここ1"
    logger.debug "create アクション#{params}"
    result = create_usecase.execute
    form = result[:form]
    task = result[:task]
    if form.errors.empty?
      @task = TaskDecorator.decorate(task)
      render :show, status: :created
    else
      render :index
    end
  end

  def update
    if @task.update(task_params)
      @task = TaskDecorator.decorate(@task)
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

  def create_usecase
    logger.debug "ここやでcreate_usecase"
    logger.debug "create_usecase アクション#{params}"
    logger.debug "重要！！！アクション#{task_params}"
    Tasks::CreateUsecase.new(task_params)
  end

  def set_group
    @group = Group.find(params[:group_id])
  end

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    logger.debug "ここやでtask_params"
    params.require(:task).permit(
      :title,
      :content,
      :on_deadline,
      :is_finished,
      task_images: [
        :image
      ]
    ).merge(
      group_id: @group.id
    )
  end

  def authenticate_user!
    if @group.members.include?(current_user.id)
      true
    else
      return @group.errors.full_messages
    end
    true
  end
end
