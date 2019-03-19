class WorksController < ApplicationController
  before_action :set_project

  def new
    @work = @project.works.build
    @image = @work.images.build
    @categories = Category.all
  end

  def create
    @work = Work.new(work_params)
    @work.project = @project
         if @work.save
           params[:images]['photo'].each do |a|
              @image = @work.images.create!(:photo => a, :work_id => @work.id)
           end
           redirect_to project_path(@project)
         else
       end
  end

  def edit
    @work = @project.works.find(params[:id])
    @image = @work.images.build
    @categories = Category.all
    # @work.project = Work.find(params[:project_id])
  end

  def update
    @work = Work.find(params[:id])
    @work.project = Project.find(params[:project_id])
    @work.images.destroy_all
    if @work.update!(work_params)
      params[:images]['photo'].each do |a|
         @image = @work.images.create!(:photo => a, :work_id => @work.id)
      end
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def work_params
    params.require(:work).permit(:title, :description, :city, :date, :category_id, :project_id,
      images_attributes:[:photo])
  end
end
