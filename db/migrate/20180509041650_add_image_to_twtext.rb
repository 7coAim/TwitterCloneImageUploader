class AddImageToTwtext < ActiveRecord::Migration[5.1]
  def change
    add_column :twtexts, :image, :text
  end
end
