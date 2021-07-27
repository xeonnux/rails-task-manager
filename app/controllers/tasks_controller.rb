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

  def create
    @task = Task.new(task_params)
    @task.save
    flash[:notice] = 'Task has been successfully created'
    redirect_to task_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_completed_params)
    @task.save
    flash[:notice] = 'Task has been updated successfully'
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    @task.save
    flash[:notice] = 'Task has been successfully deleted'
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end

  def task_completed_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
