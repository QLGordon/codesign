class Image < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :work
end
