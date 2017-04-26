class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :name
		  t.string :alias
      t.text :description
      t.string :image
      t.string :state
      t.string :country
		  t.string :pincode
      t.float :lat, :lon
      t.column :the_geom, "geometry"
      t.string :slug
      t.boolean :enabled
		  t.string :locale
      t.integer :spatial_query_radius, :default => 1000
		  t.string :tz_abbr
		  t.string :temp_units
		  t.string :gmt_offset
      t.timestamps
    end
    add_index :cities, :slug, unique: true
  end
end
