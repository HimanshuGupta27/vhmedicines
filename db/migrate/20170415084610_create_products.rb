class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image
      t.string :slug
      t.integer :company_id
      t.integer :category_id
      t.integer :drug_id
      t.timestamps
    end
    add_index :products, :slug, unique: true
  end
end
