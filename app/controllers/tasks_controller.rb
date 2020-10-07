class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render json: @tasks, status: :ok
  end

  def create
    @task = Task.create!(task_params)
    render json: @task, status: :created
  end

  private

  def task_params
    params.require(:task).permit(:title, :completed)
  end
end
