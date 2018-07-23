class Task < ApplicationRecord
  enum task_type: [:user, :group]

  has_many :comments, dependent: :destroy
  has_many :memos, dependent: :destroy
  has_many :user_tasks, dependent: :destroy
  has_many :users, through: :user_tasks
  has_many :group_tasks, dependent: :destroy
  has_many :groups, through: :group_tasks

  validates :task_type, presense: true

  def create_task(params, current_user_id)
    task = Task.create!(
      task_type: params[:task_type]
    ).cast

    task.create_sub(params, current_user_id)
  end

  def create_sub(params, current_user_id)
    if params[:task_type] == "user"
      self.user_task = UserTask.create!(
        content: params[:user_task][:content],
        image: params[:user_task][:image],
        deadline: params[:user_task][:deadline],
        complete: false,
        user_id: cuurent_user_id,
        task_id: self.id
      )
    elsif params[:task_type] == "group"
    else
      raise "Error : task_type is wrong"
    end
  end
end
