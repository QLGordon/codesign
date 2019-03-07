class WorksController < ApplicationController
  def edit
    @work = Work.find(params[:id])
  end

  def update
    @work = Work.find(params[:id])
    if @work.update!(work_params)
      redirect_to work_path(@work)
    else
      render :edit
    end
  end

  private

  def project_params
    params.require(:work).permit(:title, :description, {photos: []}, :city, :category_id)
  end
end
