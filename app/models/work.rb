class Work < ApplicationRecord
  belongs_to :project
  belongs_to :category

  has_many :colors
  has_many :svgs
end
