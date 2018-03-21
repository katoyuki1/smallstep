class TasksController < ApplicationController
  def index
  end

  def new
    @task = Task.new
  end

  def create
    Task.create(tasks_params)
    redirect_to tasks_path
  end

  private
  def tasks_params
    params.require(:task).permit(:todo, :deadline)
  end
end
