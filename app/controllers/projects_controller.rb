class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all - Project.where("title" => "Formations") - Project.where("title" => "Skills Design") - Project.where("title" => "Skills Web")
    svg_skills = ["Ps", "Ai", "Ae", "Id", "Pr", "JS", "XD", "CSS", "HTML", "Ruby", "Rails", "JS"]
    @skills = Svg.where(name: svg_skills)
  end

  def show
    @projects = Project.all - Project.where("title" => "Formations") - Project.where("title" => "Skills Design") - Project.where("title" => "Skills Web")
    @project = Project.find(params[:id])
    @clients = Client.all
    @categories = Category.all
    @works = @project.works
  end

  def new
    @project = Project.new
    @project.works.build
    @categories = Category.all
    @clients = Client.all
    @color = Color.new
  end

  def create
    # @color = Color.new(color_params)
    @project = Project.new(project_params)
    @project.save!
    @project.category_id = params[:project][:category_id]
    redirect_to projects_path

    # raise
  end

  def edit
    @clients = Client.all
    @project = Project.find(params[:id])
    @colors = @project.colors
    @color = @project.colors.build
  end

  def update
    @project.colors.destroy_all
    if @project.update!(project_params)
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  def destroy
    if @project.destroy
      redirect_to projects_path
    end
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :description, :city, :country, :photo, :category_id, :client_id,
                                    works_attributes: [:title, :description, :city, :date, :category_id, :_destroy],
                                    colors_attributes: [:name, :red, :green, :blue, :_destroy])
  end
end
