class Project < ApplicationRecord
  # mount_uploaders :photos, PhotoUploader
  has_many :colors
  belongs_to :category
end
