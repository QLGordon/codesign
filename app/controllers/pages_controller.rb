class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    font_size(1, 2, 4, 288)
    translate
    rotate
    color(1,10,10,10)
  end

  private

  def font_size(a,b,c,d)
    @font_size = []
    d.times do
      @font_size << 144
    end
    c.times do
      @font_size << 144
    end
    b.times do
      @font_size << 144
    end
    a.times do
      @font_size << 144
    end
  end
  def color(a,b,c,d)
    @color = []
    d.times do
      @color << "rgba(255,000,000,.05)"
    end
    c.times do
      @color << "rgba(255,000,000,.1)"
    end
    b.times do
      @color << "rgba(255,000,000,.15)"
    end
    a.times do
      @color << "rgba(255,000,000,.2)"
    end


  end

  def translate
    # @translate = []
    # @translate << 1
    # @translate << 2
    # @translate << 3
    @translate = (-0..0).to_a
  end

  def rotate
    @rotate = []
    @rotate << 0
    @rotate << -0
    @rotate << 0
    # @rotate = (-45..45).to_a
  end

end
