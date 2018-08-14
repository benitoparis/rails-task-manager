class TasksControllerController < ApplicationController

  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
  @tasks = Task.all
  end

  def show
  @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
  @task = params[:task]
  allowed_params = params.require(:task).permit(:title, :details)
  Task.new(allowed_params).save
  redirect_to tasks_path
  end


  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
  end


  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to tasks_path
  end



end

