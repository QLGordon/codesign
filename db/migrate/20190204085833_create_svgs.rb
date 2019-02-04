class CreateSvgs < ActiveRecord::Migration[5.2]
  def change
    create_table :svgs do |t|
      t.string :name
      t.text :svg

      t.timestamps
    end
  end
end
