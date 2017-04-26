class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.string :image
      t.integer :parent_id
      t.string :slug
      t.timestamps
    end
    add_index :categories, :slug, unique: true
  end
end
