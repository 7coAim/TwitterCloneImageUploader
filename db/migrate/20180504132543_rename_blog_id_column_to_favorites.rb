class RenameBlogIdColumnToFavorites < ActiveRecord::Migration[5.1]
  def change
    rename_column :favorites, :blog_id, :twtext_id
  end
end
