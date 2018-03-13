class AddNowToFavorites < ActiveRecord::Migration[5.1]
  def change
    add_column :favorites, :now, :boolean, default: false, null: false
  end
end
