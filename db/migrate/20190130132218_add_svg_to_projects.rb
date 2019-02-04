class AddSvgToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :svg, :string, array: true, :default => []
  end
end
