class AddProjectToColors < ActiveRecord::Migration[5.2]
  def change
    add_reference :colors, :work, foreign_key: true
  end
end
