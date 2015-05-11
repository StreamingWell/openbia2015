class AddNothcpToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nothcp, :boolean
  end
end
