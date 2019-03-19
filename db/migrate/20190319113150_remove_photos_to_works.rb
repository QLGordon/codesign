class RemovePhotosToWorks < ActiveRecord::Migration[5.2]
  def change
    remove_column :works, :photos, :string
    remove_column :works, :photo, :string
  end
end
