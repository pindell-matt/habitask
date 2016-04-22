class TasksController < ApplicationController

  def index
    # @tasks = Task.all_tasks
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

end
