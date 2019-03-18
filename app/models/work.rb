class Work < ApplicationRecord
  belongs_to :project
  belongs_to :category
  mount_uploader :photo, PhotoUploader
  has_many :colors
  has_many :svgs
end
