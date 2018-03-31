class CreateTweettexts < ActiveRecord::Migration[5.1]
  def change
    create_table :twtexts do |t|
      t.text :content
    end
  end
end
