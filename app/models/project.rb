class Project < ApplicationRecord
  has_many :colors
  belongs_to :category
end
