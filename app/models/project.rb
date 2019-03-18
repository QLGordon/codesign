class Project < ApplicationRecord
  has_many :colors
  has_many :fonts
  has_many :svgs
  has_many :works
  accepts_nested_attributes_for :works, reject_if: :all_blank, allow_destroy: true, update_only: true
  accepts_nested_attributes_for :colors, reject_if: :all_blank, allow_destroy: true, update_only: true

  belongs_to :category
  belongs_to :client
end
