class CreateTwTexts < ActiveRecord::Migration[5.1]
  def change
    create_table :tw_texts do |t|
      t.text :content
    end
  end
end
