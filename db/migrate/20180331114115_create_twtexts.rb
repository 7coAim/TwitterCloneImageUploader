class CreateTwtexts < ActiveRecord::Migration[5.1]
  def change
    create_table :twtexts do |t|

      t.timestamps
    end
  end
end
