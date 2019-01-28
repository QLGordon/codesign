class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.boolean :print
      t.boolean :motion
      t.boolean :vector

      t.timestamps
    end
  end
end
