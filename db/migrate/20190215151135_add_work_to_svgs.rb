class AddWorkToSvgs < ActiveRecord::Migration[5.2]
  def change
    add_reference :svgs, :work, foreign_key: true
  end
end
