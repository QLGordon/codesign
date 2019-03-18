class WorksController < ApplicationController
  before_action :set_project

  def new
    @work = @project.works.build
    @categories = Category.all
  end

  def create
    @work = Work.new(work_params)
    @work.project = @project
    @work.save!
    redirect_to project_path(@project)
  end

  def edit
    @project = Project.find(params[:id])
    @work = Work.find(params[:id])
    @work.project = @project
    @categories = Category.all
    # @work.project = Work.find(params[:project_id])
  end

  def update
    @work = Work.find(params[:id])
    @work.project = Project.find(params[:project_id])
    if @work.update!(work_params)
      redirect_to work_path(@work)
    else
      render :edit
    end
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def work_params
    params.require(:work).permit(:title, :description, {photos: []}, :city, :date, :category_id, :project_id)
  end
end
