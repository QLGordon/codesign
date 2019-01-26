class CreateAdresses < ActiveRecord::Migration[5.2]
  def change
    create_table :adresses do |t|
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
