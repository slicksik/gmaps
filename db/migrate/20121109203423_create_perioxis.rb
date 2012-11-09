class CreatePerioxis < ActiveRecord::Migration
  def change
    create_table :perioxis do |t|
      t.string :name

      t.timestamps
    end
  end
end
