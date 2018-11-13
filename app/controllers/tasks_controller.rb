class TasksController < ApplicationController
  def index
    @tasks = Task.all #model name is task
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params.require(:task).permit(:title, :details, :completed))
    @task.save!
    redirect_to tasks_path
  end

  def edit

    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(params.require(:task).permit(:title, :details))
    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  # def destroy_all
  #  Task.destroy_all
  #   redirect_to tasks_path
  # end
end
