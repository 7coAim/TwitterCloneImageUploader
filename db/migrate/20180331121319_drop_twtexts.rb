class DropTwtexts < ActiveRecord::Migration[5.1]
  def change
    drop_table :tw_texts
  end
end
