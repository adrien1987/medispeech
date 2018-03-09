class Addfirst_namelast_nameUsernameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :username, :string, default:  "", null: false
  end
end
