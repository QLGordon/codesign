class Color < ApplicationRecord
  belongs_to :client, optional: true
  belongs_to :project, optional: true
end
