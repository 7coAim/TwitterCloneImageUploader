class AddUserIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :twtexts, :user_id, :integer
  end
end
