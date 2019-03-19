class Work < ApplicationRecord
  belongs_to :project
  belongs_to :category
  has_many :images
  accepts_nested_attributes_for :images
  has_many :colors
  has_many :svgs
end
