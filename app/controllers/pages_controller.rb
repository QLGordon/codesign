class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    font_size(1, 2, 4, 288)
    translate
    rotate
  end

  private

  def font_size(a,b,c,d)
    @font_size = []
    d.times do
      @font_size << 24
    end
    c.times do
      @font_size << 48
    end
    b.times do
      @font_size << 72
    end
    a.times do
      @font_size << 144
    end
  end

  def translate
    # @translate = []
    # @translate << 1
    # @translate << 2
    # @translate << 3
    @translate = (-500..500).to_a
  end

  def rotate
    # @rotate = []
    # @rotate << 60
    # @rotate << 120
    # @rotate << 180
    @rotate = (-360..360).to_a
  end

end
