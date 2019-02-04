class CreateSvgs < ActiveRecord::Migration[5.2]
  def change
    create_table :svgs do |t|
      t.string :name
      t.text :svg
      t.references :client, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
