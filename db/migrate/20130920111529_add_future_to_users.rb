class AddFutureToUsers < ActiveRecord::Migration
  def change
    add_column :users, :future, :boolean
  end
end
