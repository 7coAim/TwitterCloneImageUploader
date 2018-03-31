class DropTwTexts < ActiveRecord::Migration[5.1]
  def change
    drop_table :twtexts
  end
end
