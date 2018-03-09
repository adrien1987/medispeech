class AddFirstnameLastnameUsernameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :username, :string, default:  "", null: false
  end
end
