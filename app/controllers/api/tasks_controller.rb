module Api
  class TasksController < ApplicationController
    before_action :set_task, only: %i[update destroy]

    def create
      @task = create_usecase
      @task = TaskDecorattor.decorate(@task)
      render :show, status: :created
      # 普通にストロングパラメータが使えないから、formオブジェクトでvalidateする
    end

    def update
      if @task.update(task_params)
        render :show, status: :created
      else
        @task.errors.full_messages
      end
    end

    def destroy
      @task.destroy
      render json: { id: params[:id].to_i }
    end

    private

    def create_usecase
      if task_params[:task_type].present?
        Task.create_task(params)
      else
        raise "task_params is error"
      end
    end

    def set_task
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(
        :task_type,
        user_tasks: %i[
          content
          image
          deadline
          complete
          user_id
          task_id
        ],
        group_tasks: %i[
          content
          image
          deadline
          complete
          group_id
          task_id
        ]
      )
    end
  end
end
