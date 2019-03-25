class Work < ApplicationRecord
  belongs_to :project
  belongs_to :category
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, reject_if: :all_blank, allow_destroy: true
  has_many :colors, dependent: :destroy
  has_many :svgs, dependent: :destroy
end
