class Client < ApplicationRecord
  has_many :colors
  has_many :fonts
  has_many :svgs
  has_many :projects

  belongs_to :category
end
