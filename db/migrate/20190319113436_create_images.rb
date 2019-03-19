class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :photo
      t.references :work, foreign_key: true

      t.timestamps
    end
  end
end
