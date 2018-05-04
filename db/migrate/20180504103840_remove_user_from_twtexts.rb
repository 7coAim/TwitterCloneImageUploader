class RemoveUserFromTwtexts < ActiveRecord::Migration[5.1]

  def up
    remove_reference :twtexts, :users
  end

  def down
    add_reference :twtexts, :users, foreign_key: true
  end

end
