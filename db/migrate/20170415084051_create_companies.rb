class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
  		t.string :phone
      t.string :image
  		t.string :company_head
  		t.string :company_address
      t.text :company_details
  		t.string :website
      t.float :lat, :lon
      t.column :the_geom, "geometry"
      t.boolean :enabled
  		t.integer :city_id
  		t.string :slug
  		t.timestamps
    end
    add_index :companies, :slug, unique: true
  end
end
