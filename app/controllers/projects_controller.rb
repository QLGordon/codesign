class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all - Project.where("title" => "Formations") - Project.where("title" => "Skills Design") - Project.where("title" => "Skills Web")
  end

  def show
    @project = Project.find(params[:id])
    @clients = Client.all
    @categories = Category.all
  end

  def new
    @project = Project.new
    @project.works.build
    @categories = Category.all
    @clients = Client.all
  end

  def create
    # @color = Color.new(color_params)
    @project = Project.new(project_params)
    @project.save!
    @project.category_id = params[:project][:category_id]
    # raise
  end

  def edit
    @clients = Client.all
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
    params.require(:project).permit(:title, :description, :city, :country, :category_id, :client_id,
                                    works: [:title, :description])
  end
end

