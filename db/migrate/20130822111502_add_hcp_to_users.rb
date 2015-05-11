class AddHcpToUsers < ActiveRecord::Migration
  def change
    add_column :users, :hcp, :boolean
  end
end
