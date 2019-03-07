class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:about, :index, :show]
  def about
    @skills_design = Project.find_by title: 'Skills Design'
    @skills_web = Project.find_by title: 'Skills Web'
    @formations = Project.find_by title: 'Formations'
    @clients = Client.all
    @colors = Color.all
  end

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
    @work = Work.find(params[@project[:id]])
  end

  def update
    @project = Project.find(params[:id])
    @project.works = Work.find(params[:works])
    if @project.update!(project_params)
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, {photos:[]}, :city, :country, :category_id, works_attributes: [:id, :title, :description, :category, :city, :date, :project])
  end
end

