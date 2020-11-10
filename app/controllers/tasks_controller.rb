class TasksController < ApplicationController
  before_action :find_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def new
    
  end

  def show
  end

  def create
    Task.create(task_params)
    redirect_to tasks_path
  end

  def edit
  end

  def update
    if params[:completed]
      @task.completed = true
    else
      @task.completed = false
    end
    @task.save
    Task.update(@task.id, task_params)
    redirect_to task_show_path(@task.id)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end

  def find_task
    @task = Task.find(params[:id])
  end
end
