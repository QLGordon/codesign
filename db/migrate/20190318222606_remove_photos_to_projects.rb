class RemovePhotosToProjects < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :photos, :string
  end
end
