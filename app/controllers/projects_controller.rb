class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
    @categories = Category.all
  end

  def create
    # @color = Color.new(color_params)
    @project = Project.new(project_params)
    @project.save!
    @project.category_id = params[:project][:category_id]
    # raise
  end

  def edit
  end

  def update
    if @project.update!(project_params)
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :description, {photos:[]}, :city, :country, :category_id)
  end
end

