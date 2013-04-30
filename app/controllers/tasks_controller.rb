class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.create(task_params)

    respond_with @task
  end

  def update
    @task = Task.find(params[:id])
    @task.update_attributes(task_params)

    respond_with @task
  end

  private

  def task_params
    params.require(:task).permit(:name)
  end
end
