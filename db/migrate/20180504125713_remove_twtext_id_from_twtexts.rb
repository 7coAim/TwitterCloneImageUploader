class RemoveTwtextIdFromTwtexts < ActiveRecord::Migration[5.1]
  def change
    remove_column :twtexts, :twtext_id
  end
end
