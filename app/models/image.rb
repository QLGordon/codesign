class Image < ApplicationRecord
  belongs_to :work
  mount_uploader :photo, PhotoUploader
end
