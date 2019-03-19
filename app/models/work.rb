class Work < ApplicationRecord
  belongs_to :project
  belongs_to :category
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images
  has_many :colors
  has_many :svgs
end
