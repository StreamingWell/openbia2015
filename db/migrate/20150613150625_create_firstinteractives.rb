class CreateFirstinteractives < ActiveRecord::Migration
  def change
    create_table :firstinteractives do |t|

      t.timestamps
    end
  end
end
