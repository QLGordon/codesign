class Client < ApplicationRecord
  has_one :adress
  has_many :projects
end
