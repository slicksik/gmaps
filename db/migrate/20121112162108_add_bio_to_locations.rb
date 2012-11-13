class AddBioToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :bio, :text
  end
end
