class AddPhotosToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :photos, :string, array: true, default: []
  end
end
