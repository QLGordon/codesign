class AddPhotoToWorks < ActiveRecord::Migration[5.2]
  def change
    add_column :works, :photo, :string
  end
end
