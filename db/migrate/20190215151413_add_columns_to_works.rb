class AddColumnsToWorks < ActiveRecord::Migration[5.2]
  def change
    add_column :works, :photos, :string, array: true, default: []
    add_column :works, :city, :string
    add_column :works, :date, :date
  end
end
