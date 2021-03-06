class TasksController < ApplicationController
  before_action :set_task, only: [:mark_complete, :edit, :update, :destroy, :show]

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def show
  end

  def mark_complete
    # add code here ,to mark as complete with a link instead of going through several steps
  end


  def index
    @tasks = Task.all
  end

  def update

    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def edit
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :details, :completed)
  end

end
