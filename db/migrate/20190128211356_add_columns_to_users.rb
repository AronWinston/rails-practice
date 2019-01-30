class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :email, :string
    add_column :users, :age, :integer
    add_column :users, :birthday, :date
  end
end
