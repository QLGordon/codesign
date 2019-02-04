class Project < ApplicationRecord
  belongs_to :client
  belongs_to :category
  belongs_to :color
  belongs_to :font
  belongs_to :svg
end
