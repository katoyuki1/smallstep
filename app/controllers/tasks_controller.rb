class TasksController < ApplicationController
  def index
  end

  def new
    @task = Task.new
  end

  def create
    Task.create(params[:task])
  end
end
