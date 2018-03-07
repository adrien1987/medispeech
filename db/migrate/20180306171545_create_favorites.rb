class CreateFavorites < ActiveRecord::Migration[5.1]
  def change
    create_table :favorites do |t|
      t.string :code_cis
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
