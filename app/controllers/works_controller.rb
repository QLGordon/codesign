class WorksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_project
  before_action :set_work, only: [:show, :update, :destroy]

  def index
    @works = Works.all
  end

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
    @svgs = Svg.all
    @work = @project.works.find(params[:id])
    @images = @work.images
    @categories = Category.all
  end

  def show
    @projects = Project.all

  end

  def update
    if @work.update!(work_params)
      if params[:images]
        params[:images]['photo'].each do |a|
          @image = @work.images.create!(photo: a, work_id: @work.id)
        end
      end
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  def destroy
    if @work.destroy
      redirect_to projects_path
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
