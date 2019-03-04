class Project < ApplicationRecord
  has_many :colors
  has_many :fonts
  has_many :svgs
  has_many :works

  belongs_to :category
  belongs_to :client
end
