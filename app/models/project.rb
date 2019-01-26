class Project < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :client

  has_many :colors
  has_many :categories
end
