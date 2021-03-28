class TasksController < ApplicationController
  before_action :set_task, only: %i[update destroy]

  def index
    @tasks = Task.all
    render json: @tasks, status: :ok
  end

  def create
    @task = Task.create!(task_params)

    ActionCable.server.broadcast "task_channel", task: @task, action: 'create'
    head :no_content
  end

  def update
    @task.update(task_params)

    ActionCable.server.broadcast "task_channel", task: @task, action: 'update'
    head :no_content
  end

  def destroy
    @task.destroy

    ActionCable.server.broadcast "task_channel", task: @task, action: 'delete'
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
