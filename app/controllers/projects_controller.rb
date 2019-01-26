class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:motions, :ptpx, :vecteurs]
  def motions
    @projects = Project.all
  end

  def ptpx
    @projects = Project.all
  end

  def vecteurs
    @projects = Project.all
  end
end
