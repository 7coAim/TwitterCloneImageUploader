class AddColumnTwtext < ActiveRecord::Migration[5.1]
  def change
    add_reference :twtexts, :users, foreign_key: true
  end
end
