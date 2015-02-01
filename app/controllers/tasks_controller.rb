class TasksController < ApplicationController
  before_action :find_task,
                  only: [:show, :edit, :update, :destroy]
  
  def new
    @task = Task.new
    render :new
  end

  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new task_params
    #@task.user = current_user
    if @task.save
      redirect_to @task, notice: "Task created successfully"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @task.update task_params
      redirect_to @task, notice: "Task updated successfully!"
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path, notice: "Task has been sucessfully removed"
  end

  private

  def find_task
    @task = Task.find params[:id]
  end

  def task_params
    params.require(:task).permit(:title, :description, :due_date, :done)
  end

end
