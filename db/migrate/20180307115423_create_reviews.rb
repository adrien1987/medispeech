class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.string :code_cis
      t.integer :efficacy
      t.integer :security
      t.text :description

      t.timestamps
    end
  end
end
