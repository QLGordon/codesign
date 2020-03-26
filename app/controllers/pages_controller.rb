class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:about, :design]

  def about
    @skills_design = Project.find_by title: 'Skills Design'
    @skills_web = Project.find_by title: 'Skills Web'
    @formations = Project.find_by title: 'Formations'
    @clients = Client.all
    @colors = Color.all
    @projects = Project.all
  end

  def design
    #code
  end
end
