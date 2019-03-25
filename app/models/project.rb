class Project < ApplicationRecord
  has_many :colors, dependent: :destroy
  accepts_nested_attributes_for :colors, reject_if: :all_blank, allow_destroy: true, update_only: true
  has_many :fonts, dependent: :destroy
  has_many :svgs, dependent: :destroy
  has_many :works, dependent: :destroy
  accepts_nested_attributes_for :works, reject_if: :all_blank, allow_destroy: true, update_only: true

  mount_uploader :photo, PhotoUploader

  # belongs_to :category
  belongs_to :client
end
