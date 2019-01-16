class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def print_random_char(string)
    array = []
    string.each_char do |c|
      array << c
    end
    new_array = array.shuffle
    new_array[1...2].join
  end

end
