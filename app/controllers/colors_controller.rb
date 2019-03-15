class ColorsController < ApplicationController
  def new
    @color = Colors.new
  end

  def create
    @color = Color.new(color_params)
    @color.project = Project.find(params[:project_id])
    @color.save
  end

  private

  def color_params
    params.require(:project).permit(:red, :green, :blue)
  end
end
