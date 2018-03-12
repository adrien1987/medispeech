class AddDenominationToReview < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :denomination, :string
  end
end
