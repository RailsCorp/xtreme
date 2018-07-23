class TasksController < ApplicationController
  def index
    # TaskQueryの引数にcurrent_userが持ってるgroupのidの配列を渡したい！
    # Grouptasksの引数を考え直す！
    @user_tasks = Users::TaskQuery.new(params[:page], params, current_user.id).execute
    @group_tasks = Groups::TaskQuery.new(params[:page], params, current_user.id).execute
  end
end
