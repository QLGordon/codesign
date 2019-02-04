class CreateColors < ActiveRecord::Migration[5.2]
  def change
    create_table :colors do |t|
      t.string :name
      t.integer :red
      t.integer :green
      t.integer :blue
      t.integer :alpha

      t.timestamps
    end
  end
end
