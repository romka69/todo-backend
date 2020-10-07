class TasksController < ApplicationController
  before_action :set_task, only: %i[destroy]

  def index
    @tasks = Task.all
    render json: @tasks, status: :ok
  end

  def create
    @task = Task.create!(task_params)
    render json: @task, status: :created
  end

  def destroy
    @task.destroy
    head :no_content
  end

  private

  def task_params
    params.require(:task).permit(:title, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
