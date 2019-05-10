class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :set_color

  def default_url_options
    { host: ENV["www.qlgordon.herokuapp.com/"] || "localhost:3000" }
  end

  private

  def set_color
    base = (100..155).to_a.sample
    @const = (10..100).to_a.sample
    @color_a = "rgba(#{base + @const * 5},#{base - @const * 2},#{base - @const * 2},#{1})"
    @color_b = "rgba(#{base - 50},#{base - 50},#{base + 200},1)"
    @color_c = "rgba(#{base + 175},#{base + 10},#{base - @const},1)"
    @color_d = "rgba(#{base - @const},#{base - @const},#{base - @const},1)"
  end
end
