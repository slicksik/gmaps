class AddPerioxiToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :perioxi, :string
  end
end
