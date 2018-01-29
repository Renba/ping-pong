class AddPlayerValueToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :elo, :integer
  end
end
