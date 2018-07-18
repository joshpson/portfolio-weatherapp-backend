class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.integer :user_id
      t.string :name
      t.decimal :latitude, { precision: 10, scale: 6 }
      t.decimal :longitude, { precision: 10, scale: 6 }
      t.boolean :home, default: false
      t.string :image_url
      t.datetime :time
      t.timestamps
    end
  end
end
