class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.references :user_id, foreign_key: true
      t.string :cis_code
      t.integer :efficiency
      t.integer :security
      t.text :description

      t.timestamps
    end
  end
end
