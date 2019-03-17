class Project < ApplicationRecord
  has_many :colors
  has_many :fonts
  has_many :svgs
  has_many :works
  accepts_nested_attributes_for :works

  belongs_to :category
  belongs_to :client
end
