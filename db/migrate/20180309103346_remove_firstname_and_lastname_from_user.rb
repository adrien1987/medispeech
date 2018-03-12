class RemoveFirstnameAndLastnameFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :firstname, :string
    remove_column :users, :lastname, :string
  end
end
