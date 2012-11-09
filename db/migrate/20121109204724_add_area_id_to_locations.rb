class AddAreaIdToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :area_id, :integer
  end
end
