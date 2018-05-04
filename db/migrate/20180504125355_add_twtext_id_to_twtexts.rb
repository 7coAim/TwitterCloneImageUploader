class AddTwtextIdToTwtexts < ActiveRecord::Migration[5.1]
  def change
    add_column :twtexts, :twtext_id, :integer
  end
end
