class Project < ApplicationRecord
  belongs_to :client

  has_many :colors
  has_many :categories
end
