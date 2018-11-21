class AddInfoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :cc, :integer
    add_column :users, :university, :string
    add_column :users, :career, :string
    add_column :users, :residency, :string
    add_column :users, :type, :integer
    add_column :users, :bio, :string
    add_column :users, :age, :integer
    add_column :users, :phone, :integer
    add_column :users, :org, :string
  end
end
