class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.datetime :date
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
