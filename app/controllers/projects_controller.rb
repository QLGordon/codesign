class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :new, :create, :show, :update]
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
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
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update!(project_params)
      redirect_to project_path(@project)
    else
    end
  end


  private

  def project_params
    params.require(:project).permit(:title, :description, {photos: []}, :category_id)
  end
end
