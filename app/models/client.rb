class Client < ApplicationRecord
  belongs_to :color
  belongs_to :font
  belongs_to :svg
end
