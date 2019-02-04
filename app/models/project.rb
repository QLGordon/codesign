class Project < ApplicationRecord
  has_many :colors
  has_many :fonts
  has_many :svgs

  belongs_to :category, optional: true
  belongs_to :client, optional: true
end
