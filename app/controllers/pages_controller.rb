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
      @font_size << 48
    end
    c.times do
      @font_size << 49
    end
    b.times do
      @font_size << 50
    end
    a.times do
      @font_size << 51
    end
  end

  def translate
    @translate = []
    @translate << 1
    @translate << 2
    @translate << 3
  end

  def rotate
    @rotate = (-11..11).to_a
  end

end
