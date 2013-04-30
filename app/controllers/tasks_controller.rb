class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)

    respond_with @task, location: root_path
  end

  private

  def task_params
    params.require(:task).permit(:name)
  end
end
