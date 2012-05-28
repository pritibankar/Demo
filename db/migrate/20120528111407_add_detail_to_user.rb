class AddDetailToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :FirstName, :string
    add_column :users, :MidName, :string
    add_column :users, :LastName, :string
    add_column :users, :ContactNo, :integer
    add_column :users, :Country, :string
    add_column :users, :State, :string
    add_column :users, :City, :string
    add_column :users, :Address, :string
    add_column :users, :DOB, :date
    
  end

  def self.down
    remove_column :users, :FirstName
    remove_column :users, :MidName
    remove_column :users, :LastName
    remove_column :users, :ContactNo
    remove_column :users, :Country
    remove_column :users, :State
    remove_column :users, :City
    remove_column :users, :Address
    remove_column :users, :DOB
  end
end
