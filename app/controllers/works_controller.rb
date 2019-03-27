class WorksController < ApplicationController
  before_action :set_project
  before_action :set_work, only: [:show, :update, :destroy]

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
  end

  def update
    if @work.update!(work_params)
      @work.images.destroy_all
      params[:images]['photo'].each do |a|
        @image = @work.images.create!(:photo => a, :work_id => @work.id)
      end
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  def destroy
    if @work.destroy
      redirect_to project_path(@project)
    end
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end
  def set_work
    @work = Work.find(params[:id])
  end

  def work_params
    params.require(:work).permit(:title, :description, :city, :date, :category_id, :project_id,
      images_attributes: [:photo, :_destroy, :work_id, :id])
  end
end
