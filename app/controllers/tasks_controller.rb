class TasksController < ApplicationController
  def index
    @tasks = Task.all.order("id DESC")
  end
end
