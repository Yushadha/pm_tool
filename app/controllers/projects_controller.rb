class ProjectsController < ApplicationController
  before_action :find_project,
                  only: [:show, :edit, :update, :destroy]
  
  def new
  end

  def index
    @projects = Project.all
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_project
    @project = Project.find params[:id]
  end

end
