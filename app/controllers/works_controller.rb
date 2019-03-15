class WorksController < ApplicationController
  before_action :set_work, only: [:show, :edit, :update, :destroy]

  def edit
    @project = Project.find(params[:id])
    @work = Work.find(params[works[:id]])
    @work.project = Work.find(params[:project_id])
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

  def set_work
    @work = Work.find(params[:id])
  end

  def work_params
    params.require(:work).permit(:title, :description, {photos: []}, :city, :category_id, :project_id)
  end
end
