class CreateFonts < ActiveRecord::Migration[5.2]
  def change
    create_table :fonts do |t|
      t.string :name
      t.string :string
      t.string :font

      t.timestamps
    end
  end
end
